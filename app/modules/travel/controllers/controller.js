angular.module("travel").controller("travelController",['$scope','$rootScope','AppModelService','travelService', function ($scope,$rootScope,AppModelService,travelService){
    $scope.initTravel = function(){
      $scope.contentUrl='modules/travel/views/partials/travel-lower.html';
      $scope.heading = 'Travel';
      $scope.information = '';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.travelOptionList = [
        {detailLink:"#train-details",contentUrl:"modules/travel/views/partials/train-details.html",iconClass:"fa fa-road",info:"Train"},
        {detailLink:"#bus-details",contentUrl:"modules/travel/views/partials/bus-details.html",iconClass:"fa fa-bus",info:"Bus"},
        {detailLink:"#flight-details",contentUrl:"modules/travel/views/partials/flight-details.html",iconClass:"fa fa-plane",info:"Flights"},
        {detailLink:"#traffic-information",contentUrl:"modules/travel/views/partials/traffic-information.html",iconClass:"fa fa-plane",info:"Traffic Mobility Plan"},
        {detailLink:"#fuel-pump",contentUrl:"modules/travel/views/partials/fuel-pump.html",iconClass:"fa fa-tachometer",info:"Fuel Pump"},
      ];
      $scope.trafficElement = [
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-bus",info:"Buses"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-bus",info:"Tourist Buses"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-truck",info:"Heavy/Medium Vehicle"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-bus",info:"Town Bus /Small City Bus"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-car",info:"Light Vehicles (Car/Sumo/Bolero/Scorpio)"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-taxi",info:"Auto Rickshaw (Three Wheelers)"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-motorcycle",info:"Two Wheelers"}
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

    $scope.bookIRCTC = function(){
         window.open('https://www.irctc.co.in/eticketing/loginHome.jsf');
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
    /*
    This is starting control for traffic Mobily plan
    */
    $scope.changeDayType = function(pUrl,pType){
        AppModelService.setDayType(pType); 
        $scope.contentUrl = pUrl;
    }

    $scope.changeTravelType = function(pUrl, pType){
        AppModelService.setTravelType(pType); 
        $scope.contentUrl = pUrl;  
    }
    $scope.fetchInformation = function(){
        var dayType = AppModelService.getDayType(); 
        var travelType = AppModelService.getTravelType();
        travelService.getTrafficInfo(dayType, travelType).then(function(pRes){
           $scope.information = pRes.data.Info;
        });
    }
    /*
    This is END control for traffic Mobily plan
    */

    $scope.routeSubView = function(pUrl){
        $scope.contentUrl = pUrl;
    }
    
}]);