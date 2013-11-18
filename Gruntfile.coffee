path = require 'path'

module.exports = (grunt) ->
  _ = grunt.util._

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    less:
      compile:
        files:
          'assets/app/css/main.css': 'assets/app/css/main.less'
    jekyll:
      server:
        server: true
        server_port: 4000
        exclude: ['node_modules']
        watch: true
    watch:
      options:
        atBegin: true
      less:
        files: ['assets/app/css/*.less']
        tasks: ['less']
    concurrent:
      target:
        tasks: ['jekyll:server', 'watch']
        options:
          logConcurrentOutput: true

  # Load grunt plugins
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-concurrent'
  grunt.loadNpmTasks 'grunt-jekyll'

  # Define tasks.
  grunt.registerTask 'dev', ['concurrent:target']
  grunt.registerTask 'build', ['less']
  grunt.registerTask 'default', ['dev']
