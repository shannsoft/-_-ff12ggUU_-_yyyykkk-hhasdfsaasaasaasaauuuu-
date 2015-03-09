angular.module("travel").controller("travelController",['$scope','$rootScope','AppModelService','travelService', function ($scope,$rootScope,AppModelService,travelService){
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
    $scope.days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
    
    $scope.fetchTrainDetails = function(){
        $scope.trainDetails = [];
        travelService.getTrainDetails().then(function(pRes){
            var trainDetails = pRes.data;
            $(trainDetails).each(function(i){
                $scope.trainDetails.push(trainDetails[i]);
            });
        });
    }

    $scope.gotoLink = function(pLink){
        window.open(pLink);
    }
	/*
	This is END control for train information partial
  	*/

    /*
    This is start control for Bus Information partial
    */

    $scope.fetchBusDetails = function(){
       $scope.busDetails = [];
        travelService.getBusDetails().then(function(pRes){
            var busDetails = pRes.data;
            $(busDetails).each(function(i){
                $scope.busDetails.push(busDetails[i]);
            });
        });
    }

     /*
    This is END control for Bus Information partial
    */

    /*
    This is starting control for Flight information partial
    */
    $scope.getFlightDetails = function(){
       $scope.flightDetails = [];
        travelService.getFlightDetails().then(function(pRes){
            var flightDetails = pRes.data;
            $(flightDetails).each(function(i){
                $scope.flightDetails.push(flightDetails[i]);
            });
            console.log($scope.flightDetails);
        });
    }
   /* $scope.flightDetails = [];
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
    });*/
    /*
    This is END control for Flight information partial
    */
    $scope.routeSubView = function(pUrl){
        console.log("trainDetailsInit  ",pUrl);
        $scope.contentUrl = pUrl;
    }

    
}]);