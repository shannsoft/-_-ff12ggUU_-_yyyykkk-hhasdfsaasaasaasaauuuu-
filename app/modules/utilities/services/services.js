
AppRoot.factory('UtilityService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	 var fetchToilets = function(){
	 	var response = $http.get("http://localhost/Nabakalebara/app/php project/api1.php?reqmethod=fetchToilets");
      return response;
	 },
	 fetchDrinkingWater = function(){
	 	var response = $http.get("http://localhost/Nabakalebara/app/php project/api1.php?reqmethod=fetchDrinkingWater");
      return response;
	 };
      return{
      	fetchToilets:fetchToilets,
      	fetchDrinkingWater:fetchDrinkingWater
      }
}]);