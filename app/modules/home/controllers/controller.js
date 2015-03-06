angular.module("home").controller("homeController",['$scope','$rootScope','MainService','AppModelService','MainEvent', function($scope,$rootScope,MainService,AppModelService,MainEvent){
  $scope.homeInit = function(){

    $scope.contentUrl = 'modules/home/views/partials/mainMenu.html';
    $scope.menuOptionList = AppModelService.getMenuOptions();
  }
  $scope.changeContentUrl = function(contentURL,link){
    $scope.contentUrl = contentURL;
    window.location = link; 
    console.log(contentURL,link);
  }

}]);	