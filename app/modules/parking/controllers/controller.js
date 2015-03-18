angular.module("parking").controller("parkingController",['$scope','$rootScope','AppModelService', 'ParkingService',function ($scope,$rootScope,AppModelService,ParkingService){
  	$scope.initParking = function(){
      $scope.content='';
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
    $scope.showGlobalParking = function(pParkingtype){

        ParkingService.getParkingDetails(pParkingtype).then(function(pRes){
            ParkingService.setGlobalContent(pRes.data[0]);  // as response returns as array
            $scope.contentUrl = 'modules/parking/views/partials/parking-global.html';
        });
    }
    $scope.initGlobalParking = function(){
      $scope.content = ParkingService.getGlobalContent();
      //console.log($scope.content);
    }
}]);