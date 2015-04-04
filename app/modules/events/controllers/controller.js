angular.module("events").controller("eventsController",['$scope','$rootScope','AppModelService', function ($scope,$rootScope,AppModelService){
  	$scope.initEvents = function(){
      console.log("initEvents");
      $scope.notifications = AppModelService.getNotification();
      $scope.contentUrl='modules/events/views/partials/events-lower.html';
      $scope.heading = 'Events';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.eventOptionList = [
  		{detailLink:"",icon:"img/event.jpg",eventName:"Event Name",eventLocation:"Location"},
  		{detailLink:"",icon:"img/event-odishi.jpg",eventName:"Odishi Dance",eventLocation:"Puri Mandir"},
  		{detailLink:"",icon:"img/event-kalia.jpg",eventName:"Sand Art",eventLocation:"Puri Beach"},
  		{detailLink:"",icon:"img/event-bharat.jpg",eventName:"Bharatnatyam",eventLocation:"Puri road"}
  	  ];
    }
  	
}]);