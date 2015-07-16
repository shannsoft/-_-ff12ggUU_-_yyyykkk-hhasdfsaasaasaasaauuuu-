angular.module("parking").controller("parkingController",['$scope','$rootScope','AppModelService', 'ParkingService','MainEvent','MainService',function ($scope,$rootScope,AppModelService,ParkingService,MainEvent,MainService){
  	$scope.initParking = function(){
      $scope.content='';
      $scope.notifications = AppModelService.getNotification();
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
        MainService.showLoaders();
        ParkingService.getParkingDetails(pParkingtype).then(function(pRes){
           MainService.hideLoaders();
            ParkingService.setGlobalContent(pRes.data);  // as response returns as array
            $scope.heading = pParkingtype;
            $scope.contentUrl = 'modules/parking/views/partials/parking-global.html';
        });
    }
    $scope.initGlobalParking = function(){
      $scope.content = ParkingService.getGlobalContent();
      //console.log($scope.content);
    }
    $scope.viewOnMap = function(address){ 
      $scope.$emit(MainEvent.INIT_MAP,{data : address});
    }
}]);