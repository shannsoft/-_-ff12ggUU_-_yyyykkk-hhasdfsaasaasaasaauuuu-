AppRoot.factory('EmergencyContactService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
    
    return{
    	fetchSelectedEmergencyContact : function(pTableType){
    		var response = $http.get(AppConfig.apiPath+"reqmethod=fetchSelectedEmergencyContact&tableType="+pTableType);
    		return response;
    	},
        fetchLocalAuthorities:function(){
            var response = $http.get(AppConfig.apiPath+"reqmethod=fetchLocalAuthorities");
            return response;
        },
        fetchTempleAdmin:function(){
            var response = $http.get(AppConfig.apiPath+"reqmethod=fetchTempleAdmin");
            return response;
        }
    }
}]);