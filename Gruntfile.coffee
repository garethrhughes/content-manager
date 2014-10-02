module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    watch:
      coffee:
        files: 'src/**/*.coffee'
        tasks: ['coffee:compile']
      express:
        files: 'build/**/*.js'
        tasks:  [ 'express:dev' ]
        options:
          spawn: false
    coffee:
      compile:
        expand: true
        cwd: "src/"
        src: ['**/*.coffee']
        dest: 'build/'
        ext: '.js'
    express: 
      dev: 
        options: 
           script: 'build/application.js',

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-express-server'

  grunt.registerTask 'build', ['coffee:compile']
  grunt.registerTask 'server', ['express-start', 'express-keepalive']

  grunt.registerTask 'start', ['build', 'express:dev', 'watch']