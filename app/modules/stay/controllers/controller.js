angular.module("stay").controller("stayController",['$scope','$rootScope', function ($scope,$rootScope){
  	console.log("stayController") ;
  	$scope.stayOptionList = [
  		{label:"Hotels",detailPage:"hotel-details.html" , iconImgPath: "img/hotels.jpg"},
  		{label:"Guest House",detailPage:"guesthouse-details.html" , iconImgPath: "img/guest-house.jpg"},
  		{label:"Restaurants",detailPage:"restaurants-details.html" , iconImgPath: "img/restaurants.jpg"},
  		{label:"Coffee Shop",detailPage:"coffee-shop-details.html" , iconImgPath: "img/coffee.jpg"}
  	];

}]);