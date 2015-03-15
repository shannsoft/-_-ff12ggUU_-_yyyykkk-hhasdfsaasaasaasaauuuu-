angular.module("parking").controller("parkingController",['$scope','$rootScope','AppModelService', function ($scope,$rootScope,AppModelService){
  	$scope.initParking = function(){
      $scope.contentUrl='modules/parking/views/partials/parking-lower.html';
      $scope.heading = 'Parking';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.parkingPlaces = [
        {detailLink:"",icon:"fa fa-motorcycle",contentUrl:"modules/parking/views/partials/two-wheeler-parking.html", info:"Two Wheeler Parking"},
        {detailLink:"",icon:"fa fa-taxi",contentUrl:"modules/parking/views/partials/four-wheeler-parking.html", info:"Four Wheeler Parking"},
        {detailLink:"",icon:"fa fa-bus",contentUrl:"modules/parking/views/partials/bus-parking.html",info:"Bus Parking"},
        {detailLink:"",icon:"fa fa-bus",contentUrl:"modules/parking/views/partials/tourist-bus-parking.html",info:"Tourist Bus Parking"},
      ];
    }
    $scope.routeSubView = function(pUrl){
        $scope.contentUrl = pUrl;
    }
}]);