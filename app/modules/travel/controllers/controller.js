angular.module("travel").controller("travelController",['$scope','$rootScope','AppModelService', function ($scope,$rootScope,AppModelService){
  	
    $scope.initTravel = function(){
        console.log("initTravel");
      $scope.contentUrl='modules/travel/views/partials/travel-lower.html';
      $scope.heading = 'Travel';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.travelOptionList = [
        {detailLink:"#train-details",contentUrl:"modules/travel/views/partials/train-details.html",iconClass:"fa fa-road",info:"Train"},
        {detailLink:"#bus-details",contentUrl:"modules/travel/views/partials/bus-details.html",iconClass:"fa fa-bus",info:"Bus"},
        {detailLink:"#flight-details",contentUrl:"modules/travel/views/partials/flight-details.html",iconClass:"fa fa-plane",info:"Flights"},
        {detailLink:"#traffic-information",contentUrl:"modules/travel/views/partials/traffic-information.html",iconClass:"fa fa-plane",info:"Traffic Mobility Plan"},
        {detailLink:"#fuel-pump",contentUrl:"modules/travel/views/partials/fuel-pump.html",iconClass:"fa fa-tachometer",info:"Fuel Pump"},
      ];
    }

  	/*
	This is starting control for train information partial
  	*/
    
  	$scope.trainDetails = [];
  	$scope.trainInfo = '{'+
    '"trains": ['+
        '{'+
            '"TrainID": "1",'+
            '"TrainNumber": "47544",'+
            '"TrainName": "Puri - Rourkela Passenger",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Rourkela",'+
            '"StartAt": "03:30",'+
            '"ReachesAt": "20:25",'+
            '"Sunday": "0",'+
            '"Monday": "1",'+
            '"Tuesday": "0",'+
            '"Wednesday": "1",'+
            '"Thursday": "0",'+
            '"Friday": "1",'+
            '"Saturday": "0",'+
            '"WebLink": "http://www.prokerala.com/travel/indian-railway/trains/puri-rourkela-passenger-5076.html"'+
        '},'+
        '{'+
            '"TrainID": "2",'+
            '"TrainNumber": "12743",'+
            '"TrainName": "Puri - Surat Weekly Express",'+
            '"FromStation": "Hyderabad",'+
            '"ToStation": "Puri",'+
            '"StartAt": "19:45",'+
            '"ReachesAt": "03:20",'+
            '"Sunday": "0",'+
            '"Monday": "1",'+
            '"Tuesday": "0",'+
            '"Wednesday": "1",'+
            '"Thursday": "0",'+
            '"Friday": "1",'+
            '"Saturday": "0",'+
            '"WebLink": "http://www.prokerala.com/travel/indian-railway/trains/puri-surat-wkly-express-1275.html"'+
        '},'+
        '{'+
            '"TrainID": "1",'+
            '"TrainNumber": "47544",'+
            '"TrainName": "Dhauli Express",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Bhubaneswar",'+
            '"StartAt": "10:00",'+
            '"ReachesAt": "11:30",'+
            '"Sunday": "0",'+
            '"Monday": "1",'+
            '"Tuesday": "0",'+
            '"Wednesday": "1",'+
            '"Thursday": "0",'+
            '"Friday": "1",'+
            '"Saturday": "0",'+
            '"WebLink": "http://www.prokerala.com/travel/indian-railway/trains/puri-rourkela-passenger-5076.html"'+
        '},'+
        '{'+
            '"TrainID": "2",'+
            '"TrainNumber": "47577",'+
            '"TrainName": "Neel Express",'+
            '"FromStation": "Hyderabad",'+
            '"ToStation": "Puri",'+
            '"StartAt": "09:15",'+
            '"ReachesAt": "18:05",'+
            '"Sunday": "0",'+
            '"Monday": "1",'+
            '"Tuesday": "0",'+
            '"Wednesday": "1",'+
            '"Thursday": "0",'+
            '"Friday": "1",'+
            '"Saturday": "0",'+
            '"WebLink": "http://www.prokerala.com/travel/indian-railway/trains/puri-rourkela-passenger-5076.html"'+
        '},'+
        '{'+
            '"TrainID": "1",'+
            '"TrainNumber": "47544",'+
            '"TrainName": "Dhauli Express",'+
            '"FromStation": "Puri",'+
            '"ToStation": "Bhubaneswar",'+
            '"StartAt": "10:00",'+
            '"ReachesAt": "11:30",'+
            '"Sunday": "0",'+
            '"Monday": "1",'+
            '"Tuesday": "0",'+
            '"Wednesday": "1",'+
            '"Thursday": "0",'+
            '"Friday": "1",'+
            '"Saturday": "0",'+
            '"WebLink": "http://www.prokerala.com/travel/indian-railway/trains/puri-rourkela-passenger-5076.html"'+
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
	trainDetails.sunday = parseData.trains[i].Sunday;
    trainDetails.monday = parseData.trains[i].Monday;
    trainDetails.tuesday = parseData.trains[i].Tuesday;
    trainDetails.wednesday = parseData.trains[i].Wednesday;
    trainDetails.thursday = parseData.trains[i].Thursday;
    trainDetails.friday = parseData.trains[i].Friday;
    trainDetails.saturday = parseData.trains[i].Saturday;
    trainDetails.weblink = parseData.trains[i].WebLink;
    $scope.trainDetails.push(trainDetails);
	});

    $scope.gotoLink = function(pLink){
        window.open(pLink);
    }
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

    /*
    This is starting control for Flight information partial
    */
    
    $scope.flightDetails = [];
    $scope.flightInfo = '{'+
    '"flights": ['+
        '{'+
            '"FlightID": "1",'+
            '"FlightNumber": "6E 368",'+
            '"FlightName": "Indigo",'+
            '"FromAirport": "Bhubaneswar",'+
            '"ToAirport": "New Delhi",'+
            '"StartsAt": "21:25",'+
            '"ReachesAt": "23:35",'+
            '"Sunday": "0",'+
            '"Monday": "1",'+
            '"Tuesday": "0",'+
            '"Wednesday": "1",'+
            '"Thursday": "0",'+
            '"Friday": "1",'+
            '"Saturday": "0"'+
        '},'+
        '{'+
            '"FlightID": "1",'+
            '"FlightNumber": "6E 368",'+
            '"FlightName": "Reliance",'+
            '"FromAirport": "Bangalore",'+
            '"ToAirport": "BBSR",'+
            '"StartsAt": "21:25",'+
            '"ReachesAt": "23:35",'+
            '"Sunday": "0",'+
            '"Monday": "1",'+
            '"Tuesday": "0",'+
            '"Wednesday": "1",'+
            '"Thursday": "0",'+
            '"Friday": "1",'+
            '"Saturday": "0"'+
        '}]}';

    var parseData = JSON.parse($scope.flightInfo);
    $(parseData.flights).each(function(i){
   
    var flightDetails = {};
    flightDetails.flightName = parseData.flights[i].FlightName;
    flightDetails.flightNumber = parseData.flights[i].FlightNumber;
    flightDetails.startAt = parseData.flights[i].StartsAt;
    flightDetails.reachesAt = parseData.flights[i].ReachesAt;
    flightDetails.fromAirport = parseData.flights[i].FromAirport;
    flightDetails.toAirport = parseData.flights[i].ToAirport;
    flightDetails.sunday = parseData.flights[i].Sunday;
    flightDetails.monday = parseData.flights[i].Monday;
    flightDetails.tuesday = parseData.flights[i].Tuesday;
    flightDetails.wednesday = parseData.flights[i].Wednesday;
    flightDetails.thursday = parseData.flights[i].Thursday;
    flightDetails.friday = parseData.flights[i].Friday;
    flightDetails.saturday = parseData.flights[i].Saturday;
    $scope.flightDetails.push(flightDetails);
    });
    /*
    This is END control for Flight information partial
    */
    $scope.routeSubView = function(pUrl){
        console.log("trainDetailsInit  ",pUrl);
        $scope.contentUrl = pUrl;
    }

    
}]);