AppRoot.factory('AppModelService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	
   /* global data for all modules starts*/
  var datType = '',
      travelType = '';
   var menuOptionList = [
        {detailLink:"index.html",icon:"fa fa-qrcode",info:"Dashboard"},
        {detailLink:"#travel",icon:"fa fa-plane",info:"Travel"},
        {detailLink:"#stay",icon:"fa fa-home",info:"Stay"},
        {detailLink:"#money",icon:"fa fa-inr",info:"Money"},        
        {detailLink:"#events",icon:"fa fa-users",info:"Events"},        
        {detailLink:"#utilities",icon:"fa fa-users",info:"Utilities"},        
        {detailLink:"#parking",icon:"fa fa-taxi",info:"Parking"},         
        {detailLink:"#contacts",icon:"fa fa-book",info:"Emergency Contact"},        
        {detailLink:"#route-map",icon:"fa fa-map-marker",info:"Route Map"},         
        {detailLink:"template-schedule.html",icon:"fa fa-file-text",info:"About Nabkalebara"},        
        {detailLink:"template-schedule.html",icon:"fa fa-calendar",info:"Temple Schedule"},         
    ]
    getMenuOptions = function(){
         return menuOptionList;
    },
    setDayType = function(pData){
      datType = pData;
    },
    getDayType = function(){
      return datType;
    },
    setTravelType = function(pData){
      travelType = pData;
    },
    getTravelType = function(){
      return travelType;
    },



   /* global data for all modules ends*/



   
   		
    getTempleSchedule = function(pDay){
      var response = $http.get('http://localhost/Nabakalebara/app/php%20project/api1.php?'+'reqmethod=getTempleSchedule'+"&day="+pDay);
      return response;
    };
   	
	return{
		
		getMenuOptions:getMenuOptions,
    getTempleSchedule:getTempleSchedule,
    setDayType:setDayType,
    getDayType:getDayType,
    setTravelType:setTravelType,
    getTravelType:getTravelType

	}
}]);
   	