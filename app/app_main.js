// Define all your modules with no dependencies
angular.module('home', []);

// Lastly, define your "main" module and inject all other modules as dependencies
var AppRoot = angular.module('appMain',['ionic','home']);