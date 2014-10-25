browserSync = require "browser-sync"
runSequence = require "run-sequence"
_ = require "lodash"

coffee = require "gulp-coffee"
deploy = require "gulp-gh-pages"
frontMatter = require "gulp-front-matter"
gulp = require "gulp"
gulpsmith = require "gulpsmith"
minifyHTML = require "gulp-minify-html"
prefix = require "gulp-autoprefixer"
sass = require "gulp-ruby-sass"

drafts = require "metalsmith-drafts"
feed = require "metalsmith-feed"
markdown = require "metalsmith-markdown"
permalinks = require "metalsmith-permalinks"
templates = require "metalsmith-templates"

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
    .pipe gulp.dest "./build"
