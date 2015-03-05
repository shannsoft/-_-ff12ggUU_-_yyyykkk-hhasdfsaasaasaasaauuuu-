AppRoot.factory('AboutUsService',['$http','AppConfig','$rootScope', function($http,AppConfig) {
    return{
    	getTempleSchedule : function(pDate){
    		console.log(pDate);
    		//var response = $http.get(AppConfig.apiPath+'reqmethod=getTempleSchedule'+"&date="+pDate);
    		return response;
    	}
    }
}]);
