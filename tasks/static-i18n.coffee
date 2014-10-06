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
        resGetPath: 'locales/__lng__.json'
    )

    staticI18n.processDir options.baseDir, options, (err) ->
      if err?
        grunt.log.error "Failed to compile: #{err}"
        grunt.fail.warn "i18n task failed"
      done()
