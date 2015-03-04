AppRoot.factory('HomeService',['$http','AppConfig','$rootScope', function($http,AppConfig) {
    return{
    	getTempleSchedule : function(pDate){
    		var response = $http.get(AppConfig.apiPath+'reqmethod=getTempleSchedule'+"&date="+pDate);
    		return response;
    	}
    }
}]);
