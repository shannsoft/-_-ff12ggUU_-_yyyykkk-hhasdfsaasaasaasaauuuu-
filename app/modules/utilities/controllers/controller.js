angular.module("events").controller("utilitiesController",['$scope','$rootScope','AppModelService','UtilityService', function ($scope,$rootScope,AppModelService,UtilityService){
  	$scope.tiolets = [];
    $scope.contentUrl='modules/utilities/views/partials/utilities-lower.html';
    $scope.initUtilities = function(){
      console.log("initUtilities");
      $scope.contentUrl='modules/utilities/views/partials/utilities-lower.html';
      $scope.heading = 'Utilities';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.utilityOptionList = [
        {detailLink:"#/",contentUrl:"modules/utilities/views/partials/toilet-details.html",icon:"img/event.jpg",utilityName:"Toilet",address:"Puri mangalapur"},
    		{detailLink:"#/",contentUrl:"modules/utilities/views/partials/drinking-water-details.html",icon:"img/event.jpg",utilityName:"Drinking Water",address:"Puri bus stand"}
  		
  	  ];
    }
    $scope.fetchToilets = function(pName,pCity){
      if(!pName) pName='';
      if(!pCity) pCity='';
      UtilityService.fetchToilets(pName,pCity).then(function(pRes){
         $scope.tiolets = pRes.data;
         //$scope.contentUrl='modules/utilities/views/partials/toilet-details.html';
         // console.log(pRes.data);
      });
    }
    $scope.fetchDrinkingWater = function(pName,pCity){
      if(!pName) pName='';
      if(!pCity) pCity='';
      UtilityService.fetchDrinkingWater(pName,pCity).then(function(pRes){
         $scope.drinkingWater = pRes.data;
         //$scope.contentUrl='modules/utilities/views/partials/toilet-details.html';
         // console.log(pRes.data);
      });
    }

    /*codes for hotel partial details ends*/
     $scope.routeSubView = function(pUrl){
        $scope.contentUrl = pUrl;
        console.log("content url changed to "+pUrl);
    }

  	
}]);