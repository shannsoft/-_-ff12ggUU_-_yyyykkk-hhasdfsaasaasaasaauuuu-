AppRoot.factory('AboutUsService',['$http','AppConfig','$rootScope', function($http,AppConfig) {
    
    return {    	
    	getTempleSchedule : function(pDay){
	      var response = $http.get(AppConfig.apiPath+"reqmethod=getTempleSchedule&day="+pDay);
	      return response;
	    }
    }
}]);
