angular.module("parking").controller("parkingController",['$scope','$rootScope','AppModelService', function ($scope,$rootScope,AppModelService){
  	$scope.initParking = function(){
      $scope.contentUrl='modules/parking/views/partials/parking-lower.html';
      $scope.heading = 'Parking';
      $scope.menuOptionList = AppModelService.getMenuOptions();
    }
}]);