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
minifyHTML = require "gulp-minify-html"
prefix = require "gulp-autoprefixer"
sass = require "gulp-sass"
gutil = require "gulp-util"

drafts = require "metalsmith-drafts"
feed = require "metalsmith-feed"
markdown = require "metalsmith-markdown"
permalinks = require "metalsmith-permalinks"
templates = require "metalsmith-templates"
metadata = require "metalsmith-metadata"
collections = require "metalsmith-collections"

layouts(handlebars)

globalTemplate = (config) ->
  pattern = new RegExp(config.pattern)
  (files, metalsmith, done) ->
    for file of files
      if pattern.test(file)
        _file = files[file]
        _file.template = config.templateName  unless _file.template
    done()

gulp.task "default", ["develop"]
gulp.task "develop", ["browser-sync", "watch"]
gulp.task "minify", ["minify-html"]
gulp.task "build", ["sass", "coffee", "blog"]

gulp.task "blog", ->
  gulp.src ["./source/**/*.md", "./source/data/**/*", "./source/layouts/**/*.hbs"]
    .pipe frontMatter().on "data", (file) ->
      _.assign file, file.frontMatter
      delete file.frontMatter
    .pipe gulpsmith()
      .use metadata
        site: "site.yaml"
      .use collections
        posts:
          pattern: "posts/*.md"
          sortBy: "date"
      .use globalTemplate
        pattern: "posts"
        templateName: "post.hbs"
      .use markdown()
      .use templates
        engine: "handlebars"
        directory: "./source/layouts"
        partials:
          index: "index"
      .use permalinks
        pattern: ":date/:slug"
        date: "YYYY"
    .pipe gulp.dest "./build"

gulp.task "watch", ->
  gulp.watch "./source/sass/*.scss", ["sass"]
  gulp.watch "./source/coffeescript/*.coffee", ["coffee"]
  gulp.watch ["./source/**/*.md", "./source/**/*.hbs"], ["blog"]
  gulp.watch "./build/**/*.html", -> browserSync.reload()

gulp.task "sass", ->
  gulp.src "./source/sass/*.scss"
    .pipe sass
      errLogToConsole: true
      outputStyle: "compressed"
      precision: 2
    .pipe prefix(["last 15 versions", "> 1%", "ie 9"], cascade: true)
    .pipe gulp.dest("./build/css")
    .pipe browserSync.reload(stream: true)

gulp.task "coffee", ->
  gulp.src "./source/coffeescript/*.coffee"
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
