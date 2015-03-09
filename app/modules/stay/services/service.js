AppRoot.factory('StayService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	
      var selectedHotel = {};
     
    var setCurrrentHotelFacility = function(pObj){
      CurrrentHotelFacility = pObj;
    },
    getCurrrentHotelFacility = function(){
      return CurrrentHotelFacility;
    },
    fetchHotels = function(pName , pPrice)
    {
      var response = $http.get("http://localhost/Nabakalebara/app/php project/api1.php?reqmethod=getHotelDetails");
      return response;
    },
    setSelectedHotel = function(hotelObj){
      selectedHotel = hotelObj;
    },
    getSelectedHotel = function(){
      return selectedHotel ;
    };
  return{
   		
      fetchHotels:fetchHotels,
      setSelectedHotel:setSelectedHotel,
      getSelectedHotel:getSelectedHotel
   	}
}]);