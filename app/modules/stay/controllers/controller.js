angular.module("stay").controller("stayController",['$scope','$rootScope','$timeout', function ($scope,$rootScope,$timeout){
    $scope.stayOptionList = [
      {label:"Hotels",detailPage:"#hotel-details" , iconImgPath: "img/hotels.jpg"},
      {label:"Guest House",detailPage:"#guesthouse-details" , iconImgPath: "img/guest-house.jpg"},
      {label:"Restaurants",detailPage:"#restaurants-details" , iconImgPath: "img/restaurants.jpg"},
      {label:"Coffee Shop",detailPage:"#coffee-shop-details" , iconImgPath: "img/coffee.jpg"}
    ];
    /*codes for hotel partial details starts*/
    $scope.currrentHotelFacility = {};
    $scope.hotels = [
        {hotelName:"Hotel Toshali",urlPath:"#global-hotel-facilities",hotelAddress:"Puri Konark Marine Drive, Puri",imageLink:"img/hotel-1.jpg",stars:4},
        {hotelName:"Hotel May Fair Beach Resort",urlPath:"#global-hotel-facilities",hotelAddress:"C.T. Road, Puri",imageLink:"img/hotel-2.jpg",stars:3},
        {hotelName:"Hotel Hans Coco Palms",urlPath:"#global-hotel-facilities",hotelAddress:"Baliapanda, Puri, Puri",imageLink:"img/hotel-2.jpg",stars:3},
        {hotelName:"Hotel Shakti International",urlPath:"#global-hotel-facilities",hotelAddress:" VIP Road, Puri",imageLink:"img/hotel-2.jpg",stars:3}
    ];
    $scope.globalHotelFacilities = [
      /*{
        call: 9583318028,
        email : "rajendra@gmail.com",
        map:"Toshali puri",
        hotelName:"Hotel Toshali Sands",
        deluxeRoom:{capacity:43,ep:5400,ap:8400},
        cottage:{capacity:43,ep:5400,ap:8400},
        exclusiveDelux:{capacity:43,ep:5400,ap:8400},
        villa:{capacity:43,ep:5400,ap:8400},
        exclusiveVilla:{capacity:43,ep:5400,ap:8400},
        conferenceHall:{ch:"A/C",capacity:"80,100,150,200",rent:1000},
        facilitiesAvailable : "R,B,SP,CH,CC,TT,PS,DC,LIB,IG,Pvt.Beach Yoga, Spa, MC.",
        reservationAuthority:"Manager",
        contacts:{stdCode:"06752",phone:"250572, 250571, 250573",fax:"250899"}
      },*/
   
      {
              call: 8908962437,
              email : "rajendrasahoo@gmail.com",
              map:"Hotel May Fair Beach Resort",
              hotelName:"Hotel May Fair Beach Resort",
              deluxeRoom:{name:"Delux Room",capacity:50,ep:6400,ap:9400},
              cottage:{name:"cottage",capacity:50,ep:6400,ap:9400},
              exclusiveDelux:{name:"exclusive Delux",capacity:50,ep:6400,ap:9400},
              villa:{name:"villa",capacity:50,ep:6400,ap:9400},
              exclusiveVilla:{name:"exclusive Villa",capacity:50,ep:6400,ap:9400},
              conferenceHall:{name:"conference Hall",ch:"A/C",capacity:"80,100,150,200",rent:1000},
              facilitiesAvailable : "R,B,SP,CH,CC,TT,PS,DC,LIB,IG,Pvt.Beach Yoga, Spa, MC.",
              reservationAuthority:"Manager",
              contacts:{stdCode:"06752",phone:"250572, 250571, 250573",fax:"250899"}
      }
         

    ];
    $scope.createArr = function(num) {
       var starArr = [];
       for(var i=0;i<num;i++)
       {
        starArr.push(i);
       }
       return starArr;
    }
    $scope.getHotelDetails = function(hotelObj,pIndex)
    {
      // console.log(hotelObj) ;
      // fetching details of hotel and storing in model
      $timeout(function() {

        $scope.currrentHotelFacility = $scope.globalHotelFacilities[0];
        console.log($scope.currrentHotelFacility);
        window.location = hotelObj.urlPath;
        
      });
    }

     /*codes for hotel partial details ends*/
  	//console.log("stayController",$scope.hotels,$scope.stayOptionList) ;

}]);