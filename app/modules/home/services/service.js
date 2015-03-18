AppRoot.factory('HomeService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
    var contentUrl = 'modules/home/views/partials/mainMenu.html';
    return{
    	getCountries : function(){
    		var response = $http.get(AppConfig.apiPath+"reqmethod=getSchedule");
    		return response;
    	},
    	setContentUrl : function(val){
    		contentUrl = val;
    	},
    	getContentUrl : function(){
    		return contentUrl;
    	}
    }
}]);