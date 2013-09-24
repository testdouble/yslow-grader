module.exports = (grunt) ->
  grunt.initConfig
    spec:
      unit:
        minijasminenode:
          defaultTimeoutInterval: 15000

  grunt.loadNpmTasks("grunt-jasmine-bundle")
  grunt.registerTask('default', ['spec']);
