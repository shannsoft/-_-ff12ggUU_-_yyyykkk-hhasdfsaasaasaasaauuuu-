angular.module("stay").controller("stayController",['$scope','$rootScope','$timeout','MainService','AppModelService', 'StayService','MainEvent',function ($scope,$rootScope,$timeout,MainService,AppModelService,StayService,MainEvent){
    
    $scope.initStay = function(){
      $scope.notifications = AppModelService.getNotification();
      $scope.emailVisible = false;
      $scope.emailSubject = "Hotel Enquiry"  // constant
      $scope.emaildata={emailSubject : "Hotel Enquiry"};
      $scope.$watch('enquiryName',function(val){
        console.log(val);
      });
      $scope.contentUrl='modules/stay/views/partials/stay-lower.html';
      $scope.heading = 'Stay';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.stayOptionList = [
        {label:"Hotels",detailPage:"#hotel-details" ,contentUrl:"modules/stay/views/partials/hotel-details.html", iconImgPath: "img/hotels.png"},
        {label:"Guest House",detailPage:"#guesthouse-details" ,contentUrl:"modules/stay/views/partials/guesthouse-details.html", iconImgPath: "img/guestHouse.jpg"},
        {label:"Restaurants",detailPage:"#restaurants-details",contentUrl:"modules/stay/views/partials/restaurants-details.html" , iconImgPath: "img/resturant.jpg"},
        {label:"Coffee Shop",detailPage:"#coffee-shop-details",contentUrl:"modules/stay/views/partials/coffee-shop-details.html" , iconImgPath: "img/cofee-shop.jpg"},
        {label:"Temporary Accomodation",detailPage:"#temp-accomdation-details",contentUrl:"modules/stay/views/partials/temp-accomdation-details.html" , iconImgPath: "img/accomodation.jpg"}
      ];
      $scope.priceRange = ["200-1000","1000-2000","2000-3000","3000-4000","4000-above"];
    }



    /*codes for hotel partial details starts*/
    $scope.selectedHotel = {};
    $scope.hotels = [];
    $scope.fetchHotelDetails = function(pPrice){
      //console.log(pPrice);
      //if(!pName) pName = '';
      var startPrice,endPrice;
      if(!pPrice) pPrice = '';
      else
      {
        pPrice = pPrice.split("-");
        startPrice = pPrice[0];
        startPrice=="4000" ? endPrice = undefined : endPrice=pPrice[1];
      }
      //console.log($scope.priceRange);
      MainService.showLoaders();
      StayService.fetchHotels(startPrice,endPrice).then(function(pRes){
          $scope.hotels = [];
          $scope.hotels = pRes.data;
          MainService.hideLoaders();
          
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
      MainService.showLoaders();
      StayService.setSelectedHotel(hotelObj);
      $scope.contentUrl = 'modules/stay/views/partials/global-hotel-facilities.html';
      MainService.hideLoaders();
        //window.location = hotelObj.urlPath;
    }

    


    $scope.getSelectedHotel = function()
    {
      $scope.selectedHotel = StayService.getSelectedHotel();

    }
    $scope.showEmail = function(){
      $scope.emailVisible = !$scope.emailVisible;
    }

    $scope.emailSubmit = function(emailSubmit,toEmail){
      
      
      MainService.showLoaders();
      // console.log(emailSubmit);
      emailSubmit.toEmail = toEmail;
      StayService.emailSubmit(emailSubmit).then(function(pRes){
          MainService.hideLoaders();
          if(pRes.status)
          {
            /*var alertPopup = $ionicPopup.alert({
             title: 'Thank you !',
             template: 'Your enquiry has been submited'
           });*/
            MainService.showAlertPopUp('Thank you' ,'Your enquiry has been submited');
           
            $scope.emailVisible = false;
            
          }
          else
          {
            
            MainService.showAlertPopUp('Error' ,'Enquiry has not been sent try later .');
           
            $scope.emailVisible = false;
          }
          // show successful message
      });
    }
    /*codes for hotel partial details ends*/
     $scope.routeSubView = function(pUrl,heading){
        $scope.heading = heading;
        $scope.contentUrl = pUrl;
    }


    /* guest house details starts*/
    $scope.guestHouseList = [];
    $scope.selectedGuestHouse = {};
    $scope.fetchGuestHouseDetails = function(pPrice){
      //if(!pName) pName = '';
      if(!pPrice) pPrice = '';

      var startPrice,endPrice;
      if(!pPrice) pPrice = '';
      else
      {
        pPrice = pPrice.split("-");
        startPrice = pPrice[0];
        startPrice=="4000" ? endPrice = undefined : endPrice=pPrice[1];
      }
      $scope
      StayService.fetchGuestHouse(startPrice,endPrice).then(function(pRes){
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

    /*temporary accomodation strats*/
    $scope.tempAccomdations = [];
    $scope.selectedCoffeeShop = {};
    $scope.fetchAccomodations = function(pName , pPrice){
      if(!pName) pName = '';
      if(!pPrice) pPrice = '';
      StayService.fetchAccomodations(pName , pPrice).then(function(pRes){
          $scope.tempAccomdations = [];
          $scope.tempAccomdations = pRes.data;
          //console.log(pRes.data);

          
      });
    }
    /*$scope.coffeeShopFacility = function(pShop){
        StayService.setSelectedCoffeeShop(pShop);
      $scope.contentUrl = 'modules/stay/views/partials/coffee-shop-facility.html';
        //window.location = hotelObj.urlPath;
    }
    $scope.getSelectedCoffeeShop = function(){
        $scope.selectedCoffeeShop = StayService.getSelectedCoffeeShop();
      console.log($scope.selectedCoffeeShop);
    }*/

    /*temporary accomodation ends*/
    $scope.viewOnMap = function(address){ 
      $scope.$emit(MainEvent.INIT_MAP,{data : address});
    }
  	
}]);