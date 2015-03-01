angular.module("home").controller("homeController",['$scope','$rootScope','HomeService', function($scope,$rootScope,HomeService){
  $scope.MenuOptionList = [
  		{detailLink:"index.html",icon:"fa fa-qrcode",info:"Dashboard"},
  		{detailLink:"#travel",icon:"fa fa-plane",info:"Travel"},
  		{detailLink:"#stay",icon:"fa fa-home",info:"Stay"},
  		{detailLink:"#money",icon:"fa fa-inr",info:"Money"}, 				
  		{detailLink:"#events",icon:"fa fa-users",info:"Events"}, 				
  		{detailLink:"parking.html",icon:"fa fa-taxi",info:"Parking"}, 				
  		{detailLink:"contacts.html",icon:"fa fa-book",info:"Emergency Contact"}, 				
  		{detailLink:"route-map.html",icon:"fa fa-map-marker",info:"Route Map"}, 				
  		{detailLink:"template-schedule.html",icon:"fa fa-file-text",info:"About Nabkalebara"}, 				
  		{detailLink:"template-schedule.html",icon:"fa fa-calendar",info:"Temple Schedule"}, 				
  	];
}]);	