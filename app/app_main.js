// Define all your modules with no dependencies
angular.module('home', []);
angular.module('travel', []);
angular.module('stay', []);
angular.module('money', []);
angular.module('events', []);
angular.module('emerContact', []);
angular.module('parking', []);
angular.module('aboutUs', []);

// Lastly, define your "main" module and inject all other modules as dependencies
var AppRoot = angular.module('appMain',['ngRoute','ionic','home','travel','stay','money','events','emerContact','parking','aboutUs']);
AppRoot.config(function($routeProvider) {
		$routeProvider
			//about nabakalebara
			.when('/aboutUs', {
				templateUrl : 'modules/aboutUs/views/view.html',
				controller  : 'aboutUsController'
			})
			.when('/template-schedule', {
				templateUrl : 'modules/aboutUs/views/partials/template-schedule.html',
				controller  : 'aboutUsController'
			})
			.when('/about-nabakalebara', {
				templateUrl : 'modules/aboutUs/views/partials/about-nabakalebara.html',
				controller  : 'aboutUsController'
			})
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
			.when('/train-details', {
				templateUrl : 'modules/travel/views/partials/train-details.html',
				controller  : 'travelController'
			})
			.when('/bus-details', {
				templateUrl : 'modules/travel/views/partials/bus-details.html',
				controller  : 'travelController'
			})
			.when('/flight-details', {
				templateUrl : 'modules/travel/views/partials/flight-details.html',
				controller  : 'travelController'
			})
			.when('/traffic-information', {
				templateUrl : 'modules/travel/views/partials/traffic-information.html',
				controller  : 'travelController'
			})
			.when('/fuel-pump', {
				templateUrl : 'modules/travel/views/partials/fuel-pump.html',
				controller  : 'travelController'
			})
			.when('/traffic-in-normal-days', {
				templateUrl : 'modules/travel/views/partials/traffic-in-normal-days.html',
				controller  : 'travelController'
			})
			.when('/traffic-in-holidays', {
				templateUrl : 'modules/travel/views/partials/traffic-in-holidays.html',
				controller  : 'travelController'
			})
			.when('/', {
				templateUrl : 'views/view.html',
				controller  : 'MainController'
			})
			 .otherwise({
	        redirectTo: '/'

	      });
	});