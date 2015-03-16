angular.module("home").controller("homeController",['$scope','$rootScope','MainService','AppModelService','MainEvent', function($scope,$rootScope,MainService,AppModelService,MainEvent){
  $scope.homeInit = function(){
    console.log("homeInit");
    $scope.contentUrl = 'modules/home/views/partials/mainMenu.html';
    $scope.heading = 'Home';
    $scope.menuOptionList = AppModelService.getMenuOptions();
  }
  $scope.changeContentUrl = function(contentURL,link){
    $scope.contentUrl = contentURL;
    window.location = link; 
    console.log(contentURL,link);
  }

  $rootScope.showNoty = function(){
    alert(0);
  }
  $rootScope.$on(MainEvent.INIT_MAP,function(event,pRes){

       console.log("init map for "+pRes.data);
  });

}]);	