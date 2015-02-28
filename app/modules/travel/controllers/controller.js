angular.module("travel").controller("travelController",['$scope','$rootScope', function ($scope,$rootScope){
  	$scope.travelOptionList = [
  		{detailLink:"train-details.html",iconClass:"fa fa-road",info:"Train"},
  		{detailLink:"bus-details.html",iconClass:"fa fa-bus",info:"Bus"},
  		{detailLink:"flight-details.html",iconClass:"fa fa-plane",info:"Flights"},
  		{detailLink:"traffic-information.html",iconClass:"fa fa-plane",info:"Traffic Mobility Plan"},
  		{detailLink:"fuel-pump.html",iconClass:"fa fa-tachometer",info:"Fuel Pump"},
  	];
}]);