AppRoot.factory('MainService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope){
   	
   	return{
   		getTempleSchedule : function(pDate){
    		var response = $http.get(AppConfig.apiPath+'reqmethod=getTempleSchedule'+"&date="+pDate);
    		return response;
    	}
   	}

}]);