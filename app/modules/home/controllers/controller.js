angular.module("home").controller("homeController",['$scope','$rootScope','MainService','MainEvent', function($scope,$rootScope,MainService,MainEvent){
  $scope.contentUrl = 'modules/home/views/partials/mainMenu.html';
  $scope.MenuOptionList = [
  		{detailLink:"index.html",icon:"fa fa-qrcode",info:"Dashboard"},
  		{detailLink:"#travel",icon:"fa fa-plane",info:"Travel"},
  		{detailLink:"#stay",icon:"fa fa-home",info:"Stay"},
  		{detailLink:"#money",icon:"fa fa-inr",info:"Money"}, 				
  		{detailLink:"#events",icon:"fa fa-users",info:"Events"}, 				
  		{detailLink:"#parking",icon:"fa fa-taxi",info:"Parking"}, 				
  		{detailLink:"#contacts",icon:"fa fa-book",info:"Emergency Contact"}, 				
  		{detailLink:"route-map.html",icon:"fa fa-map-marker",info:"Route Map"}, 				
  		{detailLink:"template-schedule.html",icon:"fa fa-file-text",info:"About Nabkalebara"}, 				
  		{detailLink:"template-schedule.html",icon:"fa fa-calendar",info:"Temple Schedule"}, 				
  ];
  $scope.changeContentUrl = function(contentURL,link){
    $scope.contentUrl = pURL;
    window.location = link; 
  }

}]);	