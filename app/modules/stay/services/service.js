AppRoot.factory('StayService',['$http','AppConfig','$rootScope', function($http,AppConfig,$rootScope) {
	
      var selectedHotel = {},
          selectedGuestHouse={},
          CurrrentHotelFacility={},
          selectedResturant={},
          selectedCoffeeShop={};

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
    },
    setSelectedGuestHouse = function(pHouse){
       selectedGuestHouse = pHouse;
    },
    getSelectedGuestHouse = function(){
       return selectedGuestHouse;
    },
    setSelectedResturant = function(pResturant){
      selectedResturant = pResturant;
    },
    getSelectedResturant = function(){
       return selectedResturant;
    },
    setSelectedCoffeeShop = function(pShop){
      selectedCoffeeShop = pShop;
    },
    getSelectedCoffeeShop = function(){
       return selectedCoffeeShop;
    },
    fetchGuestHouse = function(pName , pPrice){
      var response = $http.get("http://localhost/Nabakalebara/app/php project/api1.php?reqmethod=getGuestHouseDetails");
      return response;
    },
    fetchResturant = function(pName , pPrice){
      var response = $http.get("http://localhost/Nabakalebara/app/php project/api1.php?reqmethod=getResturantDetails");
      return response;
    },
    fetchCoffeeShops = function(pName , pPrice){
      var response = $http.get("http://localhost/Nabakalebara/app/php project/api1.php?reqmethod=fetchCoffeeShops");
      return response;
    };
  return{
   		
      fetchHotels:fetchHotels,
      setSelectedHotel:setSelectedHotel,
      getSelectedHotel:getSelectedHotel,
      fetchGuestHouse:fetchGuestHouse,
      fetchResturant:fetchResturant,
      fetchCoffeeShops:fetchCoffeeShops,
      setSelectedGuestHouse:setSelectedGuestHouse,
      getSelectedGuestHouse:getSelectedGuestHouse,
      setSelectedResturant:setSelectedResturant,
      getSelectedResturant:getSelectedResturant,
      setSelectedCoffeeShop:setSelectedCoffeeShop,
      getSelectedCoffeeShop:getSelectedCoffeeShop
   	}
}]);