angular.module("emerContact").controller("emerContactController",['$scope','$rootScope','AppModelService', function ($scope,$rootScope,AppModelService){
	$scope.initEmergency = function(){
       console.log("initEmergency");
      $scope.contentUrl='modules/emergency contact/views/partials/econtact-lower.html';
      $scope.heading = 'Emergency Contact';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.emerContactOptionList = [
  		{detailLink:"",contentUrl:"modules/emergency contact/views/partials/localAuthority.html",iconClass:"fa fa-users",info:"Local Authorities"},
      {detailLink:"",contentUrl:"modules/emergency contact/views/partials/temple-administration.html",iconClass:"fa fa-university",info:"Temple Administration"},
      {detailLink:"",contentUrl:"modules/emergency contact/views/partials/health-care.html",iconClass:"fa fa-medkit",info:"Health Care & Sanitation"}
  	  ];
      $scope.healthcareList = [
      {detailLink:"",contentUrl:"modules/emergency contact/views/partials/localAuthority.html",icon:"fa fa-users",info:"Hospital At Puri"},
      {detailLink:"",contentUrl:"modules/emergency contact/views/partials/temple-administration.html",icon:"fa fa-university",info:"Trauma Care"},
      {detailLink:"",contentUrl:"modules/emergency contact/views/partials/health-care.html",icon:"fa fa-medkit",info:"Temporary Toilet"},
      {detailLink:"",contentUrl:"modules/emergency contact/views/partials/health-care.html",icon:"fa fa-medkit",info:"First AID Center"}
      ];
    }
    $scope.routeSubView = function(pUrl){
        $scope.contentUrl = pUrl;
    }
  	
}]);