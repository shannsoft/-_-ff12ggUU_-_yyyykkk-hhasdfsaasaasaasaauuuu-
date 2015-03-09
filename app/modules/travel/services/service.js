AppRoot.factory('travelService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	return{
   		getTrainDetails : function(pData){
    		var response = $http.get(AppConfig.apiPath+'reqmethod=getTrainDetails&day='+pData.byDay+
                            '$sourceCity='+pData.sourceCity+
                            '&destinationCity='+pData.destinationCity);
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