angular.module("travel").controller("travelController",['$scope','$rootScope','AppModelService','travelService', function ($scope,$rootScope,AppModelService,travelService){
    $scope.initTravel = function(){
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
    $scope.searchVal = {sourceCity:'',destinationCity:'',byDay:''};   
    $scope.fetchTrainDetails = function(){
        $scope.trainDetails = [];
        travelService.getTrainDetails($scope.searchVal).then(function(pRes){
            var trainDetails = pRes.data;
            $(trainDetails).each(function(i){
                $scope.trainDetails.push(trainDetails[i]);
            });
        });
    }

    $scope.gotoLink = function(pLink){
        window.open(pLink);
    }
    $scope.serchTrain = function(){
        console.log()
      $scope.trainDetails = [];
        travelService.getTrainDetails($scope.searchVal).then(function(pRes){
            var trainDetails = pRes.data;
            $(trainDetails).each(function(i){
                $scope.trainDetails.push(trainDetails[i]);
            });
        }); 
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
    $scope.searchFlight = {source:'',destination:'',byDay:''};
    $scope.getFlightDetails = function(){
       $scope.flightDetails = [];
        travelService.getFlightDetails($scope.searchFlight).then(function(pRes){
            var flightDetails = pRes.data;
            $(flightDetails).each(function(i){
                $scope.flightDetails.push(flightDetails[i]);
            });
        });
    }

    $scope.serchFlight = function(){
        $scope.flightDetails = [];
        travelService.getFlightDetails($scope.searchFlight).then(function(pRes){
            var flightDetails = pRes.data;
            $(flightDetails).each(function(i){
                $scope.flightDetails.push(flightDetails[i]);
            });
        });
    }
    /*
    This is END control for Flight information partial
    */

    $scope.routeSubView = function(pUrl){
        console.log("trainDetailsInit  ",pUrl);
        $scope.contentUrl = pUrl;
    }

    
}]);