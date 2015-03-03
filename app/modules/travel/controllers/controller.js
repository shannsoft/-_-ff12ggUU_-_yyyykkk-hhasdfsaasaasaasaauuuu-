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
                '"Sun",'+
                '"Tue",'+
                '"Fri"'+
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
                '"Sun",'+
                '"Mon",'+
                '"Fri"'+
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
                '"Sun",'+
                '"Tue",'+
                '"Fri"'+
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
                '"Sun",'+
                '"Mon",'+
                '"Fri"'+
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
                '"Sun",'+
                '"Tue",'+
                '"Fri"'+
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
                '"Sun",'+
                '"Mon",'+
                '"Fri"'+
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

    /*
    This is start control for Bus Information partial
    */
    $scope.busDetails = [];
    $scope.busInfo = '{'+
    '"buses": ['+
        '{'+
            '"BusID": "1",'+
            '"BusNumber": "OD 02 C 5420",'+
            '"BusName": "Nilachal Dham",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Bhubaneswar",'+
            '"StartsAt": "10:00 AM",'+
            '"Duration": "2:15"'+
        '},'+
        '{'+
            '"BusID": "2",'+
            '"BusNumber": "OD 02 C 5421",'+
            '"BusName": "Dash $ Dash",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Bhubaneswar",'+
            '"StartsAt": "10:00 AM",'+
            '"Duration": "1:45"'+
        '},'+
        '{'+
            '"BusID": "3",'+
            '"BusNumber": "OD 02 C 5422",'+
            '"BusName": "Maha Bahu",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Bhubaneswar",'+
            '"StartsAt": "10:00 AM",'+
            '"Duration": "2"'+
        '},'+
        '{'+
            '"BusID": "4",'+
            '"BusNumber": "OD 02 C 5423",'+
            '"BusName": "Jai Jagannath",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Bhubaneswar",'+
            '"StartsAt": "10:00 AM",'+
            '"Duration": "2"'+
        '}]}';

    var parseData = JSON.parse($scope.busInfo);
    $(parseData.buses).each(function(i){
   
    var busDetails = {};
    busDetails.busName = parseData.buses[i].BusName;
    busDetails.busNumber = parseData.buses[i].BusNumber;
    busDetails.StartsAt = parseData.buses[i].StartsAt;
    busDetails.Duration = parseData.buses[i].Duration;
    busDetails.FromStation = parseData.buses[i].FromStation;
    busDetails.ToStation = parseData.buses[i].ToStation;
    $scope.busDetails.push(busDetails);
    });

     /*
    This is END control for Bus Information partial
    */

    
}]);