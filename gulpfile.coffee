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

drafts = require "metalsmith-drafts"
feed = require "metalsmith-feed"
markdown = require "metalsmith-markdown"
permalinks = require "metalsmith-permalinks"
templates = require "metalsmith-templates"

layouts(handlebars)

gulp.task "default", ["build"]

gulp.task "build", ->
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

gulp.task "sass", ->
  gulp.src("./sass/*.scss")
    .pipe sass
      errLogToConsole: true
      outputStyle: "compressed"
      precision: 2
    .pipe prefix(["last 15 versions", "> 1%", "ie 9"], cascade: true)
    .pipe gulp.dest("./build/css")
    .pipe browserSync.reload(stream: true)
