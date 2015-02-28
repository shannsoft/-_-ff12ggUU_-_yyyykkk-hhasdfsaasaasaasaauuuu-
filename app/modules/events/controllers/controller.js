angular.module("events").controller("eventsController",['$scope','$rootScope', function ($scope,$rootScope){
  	// console.log("eventsController") ;
  	$scope.eventOptionList = [
  		{detailLink:"event-details.html",icon:"img/event.jpg",eventName:"Event Name",eventLocation:"Location"},
  		{detailLink:"event-details.html",icon:"img/event-odishi.jpg",eventName:"Odishi Dance",eventLocation:"Puri Mandir"},
  		{detailLink:"event-details.html",icon:"img/event-kalia.jpg",eventName:"Sand Art",eventLocation:"Puri Beach"},
  		{detailLink:"event-details.html",icon:"img/event-bharat.jpg",eventName:"Bharatnatyam",eventLocation:"Puri road"}
  	];
}]);