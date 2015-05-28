AppRoot.factory('AppModelService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	
   /* global data for all modules starts*/
  var datType = '',
      travelType = '',
      notification=[];
   var menuOptionList = [
        {detailLink:"#/",icon:"fa fa-qrcode",info:"Dashboard"},
        {detailLink:"#travel",icon:"fa fa-plane",info:"Travel"},
        {detailLink:"#stay",icon:"fa fa-home",info:"Stay"},
        {detailLink:"#money",icon:"fa fa-inr",info:"Money"},        
        {detailLink:"#events",icon:"fa fa-users",info:"Events"},        
        {detailLink:"#utilities",icon:"fa fa-users",info:"Utilities"},        
        {detailLink:"#parking",icon:"fa fa-taxi",info:"Parking"},         
        {detailLink:"#contacts",icon:"fa fa-book",info:"Emergency Contact"},        
        {detailLink:"#route-map",icon:"fa fa-map-marker",info:"Route Map"},         
        {detailLink:"#offline-map",icon:"fa fa-map-marker",info:"Offline Map"},         
        {detailLink:"#aboutUs",icon:"fa fa-file-text",info:"About Nabkalebara"},        
        {detailLink:"#template-schedule",icon:"fa fa-calendar",info:"Temple Schedule"},         
    ],
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
    }
    setNotification = function(pData){
      notification = pData;
    },
    getNotification = function(){
      return notification;
    };



   /* global data for all modules ends*/
   	
	return{
		
		getMenuOptions:getMenuOptions,
    setDayType:setDayType,
    getDayType:getDayType,
    setTravelType:setTravelType,
    getTravelType:getTravelType,
    setNotification:setNotification,
    getNotification:getNotification

	}
}]);
   	