angular.module("travel").controller("travelController",['$scope','$rootScope', function ($scope,$rootScope){
  	$scope.travelOptionList = [
  		{detailLink:"#train-details",iconClass:"fa fa-road",info:"Train"},
  		{detailLink:"#bus-details",iconClass:"fa fa-bus",info:"Bus"},
  		{detailLink:"#flight-details",iconClass:"fa fa-plane",info:"Flights"},
  		{detailLink:"#traffic-information",iconClass:"fa fa-plane",info:"Traffic Mobility Plan"},
  		{detailLink:"#fuel-pump",iconClass:"fa fa-tachometer",info:"Fuel Pump"},
  	];
}]);