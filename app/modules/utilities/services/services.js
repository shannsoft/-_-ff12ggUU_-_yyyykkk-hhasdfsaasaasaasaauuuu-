
AppRoot.factory('UtilityService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	 var fetchToilets = function(){
	 	var response = $http.get(AppConfig.apiPath+"reqmethod=fetchToilets");
      return response;
	 },
	 fetchDrinkingWater = function(){
	 	var response = $http.get(AppConfig.apiPath+"reqmethod=fetchDrinkingWater");
      return response;
	 };
      return{
      	fetchToilets:fetchToilets,
      	fetchDrinkingWater:fetchDrinkingWater
      }
}]);