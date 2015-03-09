AppRoot.factory('travelService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	return{
   		getTrainDetails : function(){
    		var response = $http.get(AppConfig.apiPath+'reqmethod=getTrainDetails');
    		return response;
    	},
    	getBusDetails : function(){
    		var response = $http.get(AppConfig.apiPath+'reqmethod=getBusDetails');
    		return response;
    	},
      getFlightDetails : function(){
        var response = $http.get(AppConfig.apiPath+'reqmethod=getFlightDetails');
        return response;
      }
   	}
}]);