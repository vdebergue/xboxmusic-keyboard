module.exports = (grunt) ->

  grunt.initConfig
    watch:
      scripts:
        files: ["app/scripts/*.coffee"]
        tasks: ["coffee", "uglify"]

    coffee:
      options:
        sourceMap: true
      compile:
        files:
          "app/scripts/main.js" : ["app/scripts/*.coffee"]

    uglify:
      options:
        sourceMap: true
      compile:
        files:
          "app/scripts/main.min.js" : [
            "app/scripts/jquery.hotkeys.js",
            "app/scripts/main.js"
          ]


  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'

  grunt.registerTask 'default', [
    "coffee", "uglify", "watch"
  ]
        

