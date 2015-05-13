module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    concat: {
    options: {
      separator: ';',
    },
    libs: {
      src: ['lib/ionic/js/ionic.bundle.js',
            'lib/jquery-1.11.2.js',
            'lib/angular-route.js'
      ],
      dest: 'libs.js'
    },
    libenc: {
      src: ['app_main.js',
            'directives/logo.js',
            'events/events.js',
            'config.js',
            'controllers/controller.js',
            'services/service.js',
            'services/app_model_service.js',
            'modules/home/services/service.js',
            'modules/home/controllers/controller.js',
            'modules/travel/controllers/controller.js',
            'modules/travel/services/service.js',
            'modules/stay/services/service.js',
            'modules/stay/controllers/controller.js',
            'modules/money/controllers/controller.js',
            'modules/money/services/service.js',
            'modules/events/controllers/controller.js',
            'modules/utilities/controllers/controller.js',
            'modules/utilities/services/services.js',
            'modules/emergency_contact/controllers/controller.js',
            'modules/emergency_contact/services/services.js',
            'modules/parking/services/services.js',
            'modules/parking/controllers/controller.js',
            'modules/aboutUs/controllers/controller.js',
            'modules/aboutUs/services/service.js',
            'modules/routeMap/controllers/controller.js'
      ],
      dest: 'libenc.js'
    }
    
  },
  uglify: {
    options: {
      mangle: false
    },
    my_target: {
      files: {
        'libenc.js': ['libenc.js']
      }
    }
  }
  });
  
  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  // Default task(s).
  grunt.registerTask('default', ['concat','uglify']);
 };