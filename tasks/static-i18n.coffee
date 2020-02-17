_          = require 'lodash'
staticI18n = require 'static-i18n'

module.exports = (grunt) ->
  grunt.registerMultiTask 'i18n', 'Translates static HTML', ->
    done = @async()

    options = @options(
      selector: '[data-t]'
      useAttr: true
      replace: false
      locales: ['en']
      fixPaths: true
      locale: 'en'
      files: '**/*.html'
      exclude: []
      allowHtml: false
      baseDir: process.cwd()
      removeAttr: true
      outputDir: undefined
      fileFormat: 'json'
      localeFile: '__lng__.__fmt__'
      outputDefault: '__file__'
      outputOther: '__lng__/__file__'
      localesPath: 'locales'
      outputOverride: {}
      encoding: 'utf8'
      i18n:
        resGetPath: undefined
        lng: undefined
    )

    (staticI18n.processDir options.baseDir, options)
        .then(done).catch((err) ->
            err.message = 'Failed to compile '  + err.message;
            grunt.log.error err
            grunt.fail.warn 'i18n task failed'
        )
