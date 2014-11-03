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

layouts(handlebars)

gulp.task "default", ["develop"]
gulp.task "develop", ["browser-sync", "watch"]
gulp.task "minify", ["minify-html"]
gulp.task "build", ["sass", "coffee", "blog"]

gulp.task "blog", ->
  gulp.src "./source/**/*.md"
    .pipe frontMatter().on "data", (file) ->
      _.assign file, file.frontMatter
      delete file.frontMatter
    .pipe gulpsmith()
      .metadata
        title: "Bloge of Reda Lemeden"
        description: "You know the drill"
      .use markdown()
      .use templates
        engine: "handlebars"
        partials:
          index: "index"
      .use permalinks
        pattern: ":date/:title"
        date: "YYYY"
    .pipe gulp.dest "./build"

gulp.task "watch", ->
  gulp.watch "./sass/*.scss", ["sass"]
  gulp.watch "./coffeescript/*.coffee", ["coffee"]
  gulp.watch "./source/**/*.md", ["blog"]
  gulp.watch "./build/**/*.html", -> browserSync.reload()

gulp.task "sass", ->
  gulp.src("./sass/*.scss")
    .pipe sass
      errLogToConsole: true
      outputStyle: "compressed"
      precision: 2
    .pipe prefix(["last 15 versions", "> 1%", "ie 9"], cascade: true)
    .pipe gulp.dest("./build/css")
    .pipe browserSync.reload(stream: true)

gulp.task "coffee", ->
  gulp.src("./coffeescript/*.coffee")
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
