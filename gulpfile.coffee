_ = require "lodash"
browserSync = require "browser-sync"
runSequence = require "run-sequence"
handlebars = require "handlebars"
layouts = require "handlebars-layouts"

coffee = require "gulp-coffee"
deploy = require "gulp-gh-pages"
frontMatter = require "gulp-front-matter"
gulp = require "gulp"
gulpsmith = require "gulpsmith"
gutil = require "gulp-util"
minifyHTML = require "gulp-minify-html"
prefix = require "gulp-autoprefixer"
sass = require "gulp-sass"

metalsmith = require "metalsmith"
collections = require "metalsmith-collections"
drafts = require "metalsmith-drafts"
feed = require "metalsmith-feed"
markdown = require "metalsmith-markdown"
metadata = require "metalsmith-metadata"
permalinks = require "metalsmith-permalinks"
templates = require "metalsmith-templates"

layouts(handlebars)

globalTemplate = (config) ->
  pattern = new RegExp(config.pattern)
  (files, metalsmith, done) ->
    for file of files
      if pattern.test(file)
        _file = files[file]
        _file.template = config.templateName  unless _file.template
    done()

logger = (files, metalsmith, done) ->
  console.log files
  done()

gulp.task "default", ["develop"]
gulp.task "develop", ["browser-sync", "watch"]
gulp.task "minify", ["minify-html"]
gulp.task "build", ["sass", "coffee", "blog"]

gulp.task "blog", ->
  metalsmith(__dirname)
    .source "./content"
    .destination "./build"
    .clean false
    .use metadata
      site: "data/site.yaml"
    .use collections
      posts:
        pattern: "posts/*.md"
        sortBy: "date"
    .use globalTemplate
      pattern: "posts"
      templateName: "post.hbs"
    .use markdown()
    .use permalinks
      pattern: ":date/:slug"
      date: "YYYY"
    .use templates
      engine: "handlebars"
      directory: "layouts"
      partials:
        index: "index"
        typekit: "partials/typekit"
    .use feed
      collection: "posts"
    .build (error) ->
      throw error if error

gulp.task "watch", ["sass", "coffee", "blog"], ->
  gulp.watch "./sass/*.scss", ["sass"]
  gulp.watch "./coffeescript/*.coffee", ["coffee"]
  gulp.watch ["./content/**/*.md", "./layouts/**/*.hbs"], ["blog"]
  gulp.watch "./build/**/*.html", -> browserSync.reload()

gulp.task "sass", ->
  gulp.src "./sass/*.scss"
    .pipe sass
      errLogToConsole: true
      outputStyle: "compressed"
      precision: 2
    .pipe prefix(["last 15 versions", "> 1%", "ie 9"], cascade: true)
    .pipe gulp.dest("./build/css")
    .pipe browserSync.reload(stream: true)

gulp.task "coffee", ->
  gulp.src "./coffeescript/*.coffee"
    .pipe coffee bare: true
    .on "error", (error) -> gutil.log(error.message)
    .pipe gulp.dest("./build/javascript")
    .pipe browserSync.reload(stream: true)

gulp.task "minify-html", ->
  gulp.src "./build/**/*.html"
    .pipe minifyHTML()
    .pipe gulp.dest "./build/"

gulp.task "browser-sync", ->
  browserSync.init null,
    server:
      baseDir: "./build"
    host: "localhost"
    open: true
