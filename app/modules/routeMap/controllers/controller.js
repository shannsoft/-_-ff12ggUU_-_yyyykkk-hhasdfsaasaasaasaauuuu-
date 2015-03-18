angular.module("routeMap").controller("routeMapController",['$scope','$rootScope','AppModelService','moneyService','MainEvent', function ($scope,$rootScope,AppModelService,moneyService,MainEvent){
    var map;
    var infowindow;
    var mapSearch = '';
    var directionsDisplay;
    var directionsService;
    var stepDisplay;
    var markerArray = [];
    $scope.initRouteMAp = function(){
      $scope.contentUrl='modules/routeMap/views/partials/route-map-lower.html';
      $scope.heading = 'Route Map';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      
    }


  	
}]);