AppRoot.factory('travelService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	return{
   		getTrainDetails : function(pData){
    		var response = $http.get(AppConfig.apiPath+'reqmethod=getTrainDetails&day='+pData.byDay+
                            '&sourceCity='+pData.sourceCity+
                            '&destinationCity='+pData.destinationCity);
    		return response;
    	},
    	getBusDetails : function(pData){
    		var response = $http.get(AppConfig.apiPath+'reqmethod=getBusDetails&source='+pData.source+
                            '&destination='+pData.destination);
    		return response;
    	},
      getFlightDetails : function(pData){
        var response = $http.get(AppConfig.apiPath+'reqmethod=getFlightDetails&day='+pData.byDay+
                            '&sourceCity='+pData.source+"&destinationCity="+pData.destination);
        return response;
      },
      getTrafficInfo : function(daytype, travelType){
        var response = $http.get(AppConfig.apiPath+'reqmethod=getTrafficInfo&dayType='+daytype+
                            '&travelType='+travelType);
        return response;
      }
   	}
}]);