angular.module("events").controller("utilitiesController",['$scope','$rootScope','AppModelService','UtilityService','MainService', function ($scope,$rootScope,AppModelService,UtilityService,MainService){
  	$scope.tiolets = [];
    $scope.notifications = '';
    $scope.contentUrl='modules/utilities/views/partials/utilities-lower.html';
    $scope.initUtilities = function(){
      console.log("initUtilities");
      
      $scope.contentUrl='modules/utilities/views/partials/utilities-lower.html';
      $scope.heading = 'Utilities';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.utilityOptionList = [
        {detailLink:"#/",contentUrl:"modules/utilities/views/partials/toilet-details.html",icon:"img/toilet.png",utilityName:"Toilet",address:"Puri mangalapur"},
    		{detailLink:"#/",contentUrl:"modules/utilities/views/partials/drinking-water-details.html",icon:"img/drinkingWater.png",utilityName:"Drinking Water",address:"Puri bus stand"}
  		
  	  ];
    }
    
    $scope.fetchNotification = function(){
      $scope.contentUrl='modules/utilities/views/partials/noti-lower.html';
      $scope.heading = 'Notification';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      MainService.showLoaders();
      UtilityService.getNotification().then(function(pRes){
            MainService.hideLoaders();
            $scope.notifications = pRes.data;
      });
    }
    $scope.fetchToilets = function(pName,pCity){
      if(!pName) pName='';
      if(!pCity) pCity='';
      MainService.showLoaders();
      UtilityService.fetchToilets(pName,pCity).then(function(pRes){
         MainService.hideLoaders();
         $scope.tiolets = pRes.data;
         //$scope.contentUrl='modules/utilities/views/partials/toilet-details.html';
         // console.log(pRes.data);
      });
    }
    $scope.fetchDrinkingWater = function(pName,pCity){
      if(!pName) pName='';
      if(!pCity) pCity='';
      MainService.showLoaders();
      UtilityService.fetchDrinkingWater(pName,pCity).then(function(pRes){
         MainService.hideLoaders();
         $scope.drinkingWater = pRes.data;
         //$scope.contentUrl='modules/utilities/views/partials/toilet-details.html';
         // console.log(pRes.data);
      });
    }

    /*codes for hotel partial details ends*/
     $scope.routeSubView = function(pUrl,heading){
        $scope.contentUrl = pUrl;
        $scope.heading = heading;
    }

  	
}]);