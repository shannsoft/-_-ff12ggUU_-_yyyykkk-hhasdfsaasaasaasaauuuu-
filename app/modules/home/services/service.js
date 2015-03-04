AppRoot.factory('AboutUsService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
    return{
    	getCountries : function(){
    		var response = $http.get(AppConfig.apiPath+"reqmethod=getSchedule");
    		return response;
    	}
    }
}]);