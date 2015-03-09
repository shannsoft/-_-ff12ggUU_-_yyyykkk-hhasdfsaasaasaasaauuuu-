AppRoot.factory('AppModelService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	
   /* global data for all modules starts*/
   var menuOptionList = [
        {detailLink:"index.html",icon:"fa fa-qrcode",info:"Dashboard"},
        {detailLink:"#travel",icon:"fa fa-plane",info:"Travel"},
        {detailLink:"#stay",icon:"fa fa-home",info:"Stay"},
        {detailLink:"#money",icon:"fa fa-inr",info:"Money"},        
        {detailLink:"#events",icon:"fa fa-users",info:"Events"},        
        {detailLink:"#parking",icon:"fa fa-taxi",info:"Parking"},         
        {detailLink:"#contacts",icon:"fa fa-book",info:"Emergency Contact"},        
        {detailLink:"route-map.html",icon:"fa fa-map-marker",info:"Route Map"},         
        {detailLink:"template-schedule.html",icon:"fa fa-file-text",info:"About Nabkalebara"},        
        {detailLink:"template-schedule.html",icon:"fa fa-calendar",info:"Temple Schedule"},         
    ]
    getMenuOptions = function(){
         return menuOptionList;
    }

   /* global data for all modules ends*/



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
    getTempleSchedule = function(pDay){
      var response = $http.get('http://localhost/Nabakalebara/app/php%20project/api1.php?'+'reqmethod=getTempleSchedule'+"&day="+pDay);
      return response;
    };
   	/*global varibale for Stay ends*/
	return{
		setCurrrentHotelFacility:setCurrrentHotelFacility,
      getCurrrentHotelFacility:getCurrrentHotelFacility,
		getMenuOptions:getMenuOptions,
    getTempleSchedule:getTempleSchedule

	}
}]);
   	