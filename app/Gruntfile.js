module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    concat: {
    options: {
      separator: ';',
    },
    dist: {
      src: 'app/modules/*.js',
      dest: 'app/libenc.js',
    },
  }
  });
  
  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-concat');
  // Default task(s).
  grunt.registerTask('default', ['concat']);
 };