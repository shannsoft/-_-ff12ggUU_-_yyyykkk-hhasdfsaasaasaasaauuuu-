angular.module("events").controller("eventsController",['$scope','$rootScope','AppModelService', function ($scope,$rootScope,AppModelService){
  	$scope.initEvents = function(){
      $scope.contentUrl='modules/events/views/partials/events-lower.html';
      $scope.heading = 'Events';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.eventOptionList = [
  		{detailLink:"event-details.html",icon:"img/event.jpg",eventName:"Event Name",eventLocation:"Location"},
  		{detailLink:"event-details.html",icon:"img/event-odishi.jpg",eventName:"Odishi Dance",eventLocation:"Puri Mandir"},
  		{detailLink:"event-details.html",icon:"img/event-kalia.jpg",eventName:"Sand Art",eventLocation:"Puri Beach"},
  		{detailLink:"event-details.html",icon:"img/event-bharat.jpg",eventName:"Bharatnatyam",eventLocation:"Puri road"}
  	  ];
    }
  	
}]);