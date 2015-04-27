AppRoot.factory('MoneyService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	return{
   		getCity : function(){
        var response = $http.get(AppConfig.apiPath+'reqmethod=getCity&state=odisha');
        return response;
      },
      getBranchList : function(pData){
        
        if(pData != ''){
         var response = $http.get(AppConfig.apiPath+'reqmethod=getBranches&cityId='+pData);
        }
        else
          var response = $http.get(AppConfig.apiPath+'reqmethod=getBranches');
        return response;
      },
      getExchangeList : function(pData){
        if(pData != ''){ 
    	 	 var response = $http.get(AppConfig.apiPath+'reqmethod=getBranches&cityId='+pData);
        }
        else
          var response = $http.get(AppConfig.apiPath+'reqmethod=getBranches');
    		return response;
    	}
   	}
}]);