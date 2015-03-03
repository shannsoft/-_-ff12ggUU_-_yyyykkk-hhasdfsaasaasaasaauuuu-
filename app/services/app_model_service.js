AppRoot.factory('AppModelService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	/*global varibale for Stay starts*/
   		/*##########  Global variable for  hotels starts*/
   		var CurrrentHotelFacility = {};
   		/*##########  Global variable for  hotels Ends*/
   	var setCurrrentHotelFacility = function(pObj){
   		CurrrentHotelFacility = pObj;
   	},
   	getCurrrentHotelFacility = function(){
   		return CurrrentHotelFacility;
   	};
   	/*global varibale for Stay ends*/
	return{
		setCurrrentHotelFacility:setCurrrentHotelFacility,
		getCurrrentHotelFacility:getCurrrentHotelFacility

	}
}]);
   	