AppRoot.factory('MainService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope){
   	
   	return{
   		getTempleSchedule : function(pDay){
    		var response = $http.get(AppConfig.apiPath+'reqmethod=getTempleSchedule'+"&date="+pDay);
    		return response;
    	}
   	}

}]);