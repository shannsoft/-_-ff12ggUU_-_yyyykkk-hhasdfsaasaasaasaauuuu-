angular.module("emerContact").controller("emerContactController",['$scope','$rootScope','AppModelService', function ($scope,$rootScope,AppModelService){
	$scope.initEmergency = function(){
      $scope.contentUrl='modules/emergency contact/views/partials/econtact-lower.html';
      $scope.heading = 'Emergency Contact';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.emerContactOptionList = [
  		{detailLink:"#hospital-puri",iconClass:"fa fa-ambulance",info:"Hospitals in Puri"},
  		{detailLink:"#trauma-care",iconClass:"fa fa-medkit",info:"Trauma Care"},
  		{detailLink:"#temple-administration",iconClass:"fa fa-university",info:"Temple Administration"},
  		{detailLink:"#local-authorities",iconClass:"fa fa-users",info:"Local Authorities"},
  	  ];
    }
  	
}]);