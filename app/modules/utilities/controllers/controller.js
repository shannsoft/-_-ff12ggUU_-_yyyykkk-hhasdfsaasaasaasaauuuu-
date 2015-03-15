angular.module("events").controller("utilitiesController",['$scope','$rootScope','AppModelService','UtilityService', function ($scope,$rootScope,AppModelService,UtilityService){
  	$scope.tiolets = [];
    $scope.initUtilities = function(){
      console.log("initUtilities");
      $scope.contentUrl='modules/utilities/views/partials/utilities-lower.html';
      $scope.heading = 'Utilities';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.utilityOptionList = [
        {detailLink:"#toilet-details",icon:"img/event.jpg",utilityName:"Toilet",address:"Puri mangalapur"},
    		{detailLink:"#/",icon:"img/event.jpg",utilityName:"Drinking Water",address:"Puri bus stand"}
  		
  	  ];
    }
    $scope.fetchTiolets = function(pName,pCity){
      if(!pName) pName='';
      if(!pCity) pCity='';
      UtilityService.fetchTiolets(pName,pCity).then(function(pRes){
          $scope.tiolets = pRes.data;
      });
    }
  	
}]);