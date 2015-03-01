// Define all your modules with no dependencies
angular.module('home', []);
angular.module('travel', []);
angular.module('stay', []);
angular.module('money', []);
angular.module('events', []);
angular.module('emerContact', []);
angular.module('parking', []);

// Lastly, define your "main" module and inject all other modules as dependencies
var AppRoot = angular.module('appMain',['ngRoute','ionic','home','travel','stay','money','events','emerContact','parking']);
AppRoot.config(function($routeProvider) {
		$routeProvider

			// route for the travel page
			.when('/travel', {
				templateUrl : 'modules/travel/views/view.html',
				controller  : 'travelController'
			})
			// route for the stay page
			.when('/stay', {
				templateUrl : 'modules/stay/views/view.html',
				controller  : 'stayController'
			})
			.when('/money', {
				templateUrl : 'modules/money/views/view.html',
				controller  : 'moneyController'
			})
			.when('/events', {
				templateUrl : 'modules/events/views/view.html',
				controller  : 'eventsController'
			})
			.when('/contacts', {
				templateUrl : 'modules/emergency contact/views/view.html',
				controller  : 'emerContactController'
			})
			.when('/parking', {
				templateUrl : 'modules/parking/views/view.html',
				controller  : 'parkingController'
			})
			.when('/', {
				templateUrl : 'views/view.html',
				controller  : 'MainController'
			})
			 .otherwise({
	        redirectTo: '/'

	      });
	});