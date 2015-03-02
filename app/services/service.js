AppRoot.factory('MainService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope){
   	
   	/*global varibale for Stay starts*/
   		/*##########  Global variable for  hotels starts*/
   		var CurrrentHotelFacility = {};
   		/*##########  Global variable for  hotels Ends*/
   	/*global varibale for Stay ends*/
   	var setCurrrentHotelFacility = function(pObj){
   		CurrrentHotelFacility = pObj;
   	},
   	getCurrrentHotelFacility = function(){
   		return CurrrentHotelFacility;
   	};
	return{
		setCurrrentHotelFacility:setCurrrentHotelFacility,
		getCurrrentHotelFacility:getCurrrentHotelFacility

	}

}]);