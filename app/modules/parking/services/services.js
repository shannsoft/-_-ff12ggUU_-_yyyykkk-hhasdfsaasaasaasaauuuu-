AppRoot.factory('ParkingService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	var content;
  return{
   		getParkingDetails : function(pParkingType){
        var response = $http.get(AppConfig.apiPath+'reqmethod=getParkingDetails&parkingType='+pParkingType);
        return response;
      },
      setGlobalContent : function(pcontent){
        content = pcontent;
      },
      getGlobalContent : function(){
        return content;
      }
   	}
}]);