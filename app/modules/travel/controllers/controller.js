angular.module("travel").controller("travelController",['$scope','$rootScope', function ($scope,$rootScope){
  	$scope.travelOptionList = [
  		{detailLink:"#train-details",iconClass:"fa fa-road",info:"Train"},
  		{detailLink:"#bus-details",iconClass:"fa fa-bus",info:"Bus"},
  		{detailLink:"#flight-details",iconClass:"fa fa-plane",info:"Flights"},
  		{detailLink:"#traffic-information",iconClass:"fa fa-plane",info:"Traffic Mobility Plan"},
  		{detailLink:"#fuel-pump",iconClass:"fa fa-tachometer",info:"Fuel Pump"},
  	];

  	$scope.trainInfo = '{"trains" : [{"TrainID": "1","TrainNumber" : "47544","TrainName" : "Dhauli Express","FromStation" : "Puri","ToStation" : "Bhubaneswar","StartAt" : "10:00","ReachesAt" : "11:30","Availabilty" : "["sunday", "tuesday","friday"]"},{"TrainID": "2","TrainNumber" : "47588","TrainName" : "Neel Express","FromStation" : "Hydradabad","ToStation" : "Puri","StartAt" : "18:00","ReachesAt" : "6:30","Availabilty" : "["sunday", "tuesday","friday"]"}]}';
  }]);