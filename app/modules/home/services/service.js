AppRoot.factory('HomeService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
    var _apiKey = "A610^Gx{!=3l##i*905Q";
    return{
    	getCountries : function(){
    		var response = $http.get(AppConfig.apiPath+"reqmethod=getCountries");
    		return response;
    	}
    }
}]);