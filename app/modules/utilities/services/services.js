
AppRoot.factory('UtilityService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	 var fetchTiolets = function(){
	 	var response = $http.get("http://localhost/Nabakalebara/app/php project/api1.php?reqmethod=fetchTiolets");
      return response;
	 }
      return{
      	fetchTiolets:fetchTiolets
      }
}]);