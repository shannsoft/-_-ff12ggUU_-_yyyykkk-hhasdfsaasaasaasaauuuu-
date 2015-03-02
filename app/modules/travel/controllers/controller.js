angular.module("travel").controller("travelController",['$scope','$rootScope', function ($scope,$rootScope){
  	$scope.travelOptionList = [
  		{detailLink:"#train-details",iconClass:"fa fa-road",info:"Train"},
  		{detailLink:"#bus-details",iconClass:"fa fa-bus",info:"Bus"},
  		{detailLink:"#flight-details",iconClass:"fa fa-plane",info:"Flights"},
  		{detailLink:"#traffic-information",iconClass:"fa fa-plane",info:"Traffic Mobility Plan"},
  		{detailLink:"#fuel-pump",iconClass:"fa fa-tachometer",info:"Fuel Pump"},
  	];

  	/*
	This is starting control for train information partial
  	*/
    
  	$scope.trainDetails = [];
  	$scope.trainInfo = '{'+
    '"trains": ['+
        '{'+
            '"TrainID": "1",'+
            '"TrainNumber": "47544",'+
            '"TrainName": "Dhauli Express",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Bhubaneswar",'+
            '"StartAt": "10:00",'+
            '"ReachesAt": "11:30",'+
            '"Availabilty": ['+
                '"sunday",'+
                '"tuesday",'+
                '"friday"'+
            ']'+
        '},'+
        '{'+
            '"TrainID": "2",'+
            '"TrainNumber": "47577",'+
            '"TrainName": "Neel Express",'+
            '"FromStation": "Hyderabad",'+
            '"ToStation": "Puri",'+
            '"StartAt": "09:15",'+
            '"ReachesAt": "18:05",'+
            '"Availabilty": ['+
                '"sunday",'+
                '"monday",'+
                '"friday"'+
            ']'+
        '},'+
        '{'+
            '"TrainID": "1",'+
            '"TrainNumber": "47544",'+
            '"TrainName": "Dhauli Express",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Bhubaneswar",'+
            '"StartAt": "10:00",'+
            '"ReachesAt": "11:30",'+
            '"Availabilty": ['+
                '"sunday",'+
                '"tuesday",'+
                '"friday"'+
            ']'+
        '},'+
        '{'+
            '"TrainID": "2",'+
            '"TrainNumber": "47577",'+
            '"TrainName": "Neel Express",'+
            '"FromStation": "Hyderabad",'+
            '"ToStation": "Puri",'+
            '"StartAt": "09:15",'+
            '"ReachesAt": "18:05",'+
            '"Availabilty": ['+
                '"sunday",'+
                '"monday",'+
                '"friday"'+
            ']'+
        '},'+
        '{'+
            '"TrainID": "1",'+
            '"TrainNumber": "47544",'+
            '"TrainName": "Dhauli Express",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Bhubaneswar",'+
            '"StartAt": "10:00",'+
            '"ReachesAt": "11:30",'+
            '"Availabilty": ['+
                '"sunday",'+
                '"tuesday",'+
                '"friday"'+
            ']'+
        '},'+
        '{'+
            '"TrainID": "2",'+
            '"TrainNumber": "47577",'+
            '"TrainName": "Neel Express",'+
            '"FromStation": "Hyderabad",'+
            '"ToStation": "Puri",'+
            '"StartAt": "09:15",'+
            '"ReachesAt": "18:05",'+
            '"Availabilty": ['+
                '"sunday",'+
                '"monday",'+
                '"friday"'+
            ']'+
        '}]}';

	var parseData = JSON.parse($scope.trainInfo);
	$(parseData.trains).each(function(i){
   
    var trainDetails = {};
    trainDetails.trainName = parseData.trains[i].TrainName;
    trainDetails.trainNumber = parseData.trains[i].TrainNumber;
    trainDetails.startAt = parseData.trains[i].StartAt;
    trainDetails.reachesAt = parseData.trains[i].ReachesAt;
    trainDetails.fromStation = parseData.trains[i].FromStation;
    trainDetails.toStation = parseData.trains[i].ToStation;
		trainDetails.availability = parseData.trains[i].Availabilty;
    $scope.trainDetails.push(trainDetails);
	});
	/*
	This is END control for train information partial
  	*/

}]);