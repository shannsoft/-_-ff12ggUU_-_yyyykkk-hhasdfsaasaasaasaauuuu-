angular.module("aboutUs").controller("aboutUsController",['$scope','$rootScope', function ($scope,$rootScope){
  	 $scope.aboutUsOptionList = [
  		{label:"Temple Schedule",detailPage:"template-schedule.html" , iconImgPath: "img/hotels.jpg"},
  		{label:" About Nabakalebara",detailPage:"about-nabakalebara.html" , iconImgPath: "img/guest-house.jpg"},
  	];
}]);