angular.module("stay").controller("stayController",['$scope','$rootScope','$timeout','MainService','AppModelService', 'StayService',function ($scope,$rootScope,$timeout,MainService,AppModelService,StayService){
    
    $scope.initStay = function(){
      console.log("initStay");
      $scope.contentUrl='modules/stay/views/partials/stay-lower.html';
      $scope.heading = 'Stay';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.stayOptionList = [
        {label:"Hotels",detailPage:"#hotel-details" ,contentUrl:"modules/stay/views/partials/hotel-details.html", iconImgPath: "img/hotels.jpg"},
        {label:"Guest House",detailPage:"#guesthouse-details" ,contentUrl:"modules/stay/views/partials/guesthouse-details.html", iconImgPath: "img/guest-house.jpg"},
        {label:"Restaurants",detailPage:"#restaurants-details",contentUrl:"modules/stay/views/partials/restaurants-details.html" , iconImgPath: "img/restaurants.jpg"},
        {label:"Coffee Shop",detailPage:"#coffee-shop-details",contentUrl:"modules/stay/views/partials/coffee-shop-details.html" , iconImgPath: "img/coffee.jpg"}
      ];
    }



    /*codes for hotel partial details starts*/
    $scope.selectedHotel = {};
    $scope.hotels = [];
    $scope.fetchHotelDetails = function(pName , pPrice){
      if(!pName) pName = '';
      if(!pPrice) pPrice = '';
      StayService.fetchHotels(pName , pPrice).then(function(pRes){
          $scope.hotels = [];
          $scope.hotels = pRes.data;
          
      });
    }
    /*$scope.hotels = [
        {hotelName:"Hotel Toshali",urlPath:"#global-hotel-facilities",hotelAddress:"Puri Konark Marine Drive, Puri",imageLink:"img/hotel-1.jpg",stars:4},
        {hotelName:"Hotel May Fair Beach Resort",urlPath:"#global-hotel-facilities",hotelAddress:"C.T. Road, Puri",imageLink:"img/hotel-2.jpg",stars:3},
        {hotelName:"Hotel Hans Coco Palms",urlPath:"#global-hotel-facilities",hotelAddress:"Baliapanda, Puri, Puri",imageLink:"img/hotel-2.jpg",stars:3},
        {hotelName:"Hotel Shakti International",urlPath:"#global-hotel-facilities",hotelAddress:" VIP Road, Puri",imageLink:"img/hotel-2.jpg",stars:3}
    ];*/
    
    $scope.createArr = function(num) {
       var starArr = [];
       for(var i=0;i<num;i++)
       {
        starArr.push(i);
       }
       return starArr;
    }
    $scope.hotelFacility = function(hotelObj)
    {
      //console.log(hotelObj) ;
      // fetching details of hotel and storing in model
      StayService.setSelectedHotel(hotelObj);
      $scope.contentUrl = 'modules/stay/views/partials/global-hotel-facilities.html';
        //window.location = hotelObj.urlPath;
    }

    


    $scope.getSelectedHotel = function()
    {
      $scope.selectedHotel = StayService.getSelectedHotel();
    }

    /*codes for hotel partial details ends*/
     $scope.routeSubView = function(pUrl){
        $scope.contentUrl = pUrl;
    }


    /* guest house details starts*/
    $scope.guestHouseList = [];
    $scope.selectedGuestHouse = {};
    $scope.fetchGuestHouseDetails = function(pName , pPrice){
      if(!pName) pName = '';
      if(!pPrice) pPrice = '';
      StayService.fetchGuestHouse(pName , pPrice).then(function(pRes){
          $scope.guestHouseList = [];
          $scope.guestHouseList = pRes.data;
          console.log(pRes.data);

          
      });
    }
    $scope.guestHouseFacility = function(pHouse)
    {
      //console.log(hotelObj) ;
      // fetching details of hotel and storing in model
      StayService.setSelectedGuestHouse(pHouse);
      $scope.contentUrl = 'modules/stay/views/partials/guesthouse-facility.html';
        //window.location = hotelObj.urlPath;
    }
    $scope.getSelectedGuestHouse = function()
    {
      $scope.selectedGuestHouse = StayService.getSelectedGuestHouse();
      console.log($scope.selectedGuestHouse);
    }

    /* guest house details ends*/
    
    /*resturant  details starts*/
    $scope.resturants = [];
    $scope.selectedResturant ={};
    $scope.fetchResturantDetails = function(pName , pPrice){
      if(!pName) pName = '';
      if(!pPrice) pPrice = '';
      StayService.fetchResturant(pName , pPrice).then(function(pRes){
          $scope.resturants = [];
          $scope.resturants = pRes.data;
          //console.log(pRes.data);

          
      });
    }
    $scope.resturantFacility = function(pResturant){
      StayService.setSelectedResturant(pResturant);
      $scope.contentUrl = 'modules/stay/views/partials/resturant-facility.html';
        //window.location = hotelObj.urlPath;
    }
    $scope.getSelectedResturant = function(){
      $scope.selectedResturant = StayService.getSelectedResturant();
      //console.log($scope.selectedResturant);
    }
    /*resturant  details ends*/

    /*coffee  details starts*/
    $scope.coffeeShops = [];
    $scope.selectedCoffeeShop = {};
    $scope.fetchCoffeeShops = function(pName , pPrice){
      if(!pName) pName = '';
      if(!pPrice) pPrice = '';
      StayService.fetchCoffeeShops(pName , pPrice).then(function(pRes){
          $scope.coffeeShops = [];
          $scope.coffeeShops = pRes.data;
          //console.log(pRes.data);

          
      });
    }
    $scope.coffeeShopFacility = function(pShop){
        StayService.setSelectedCoffeeShop(pShop);
      $scope.contentUrl = 'modules/stay/views/partials/coffee-shop-facility.html';
        //window.location = hotelObj.urlPath;
    }
    $scope.getSelectedCoffeeShop = function(){
        $scope.selectedCoffeeShop = StayService.getSelectedCoffeeShop();
      console.log($scope.selectedCoffeeShop);
    }
    /*resturant  details ends*/

  	

}]);