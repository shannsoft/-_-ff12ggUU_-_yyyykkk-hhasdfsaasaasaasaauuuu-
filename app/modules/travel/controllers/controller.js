angular.module("travel").controller("travelController",['$scope','$rootScope','AppModelService','travelService','MainEvent','MainService', function ($scope,$rootScope,AppModelService,travelService,MainEvent,MainService){
    $scope.initTravel = function(){
        $scope.notifications = AppModelService.getNotification();
      $scope.contentUrl='modules/travel/views/partials/travel-lower.html';
      $scope.heading = 'Travel';
      $scope.information = '';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.travelOptionList = [
        {detailLink:"#train-details",contentUrl:"modules/travel/views/partials/train-details.html",iconClass:"fa fa-train",info:"Train",header:"Train From Puri"},
        /*{detailLink:"#bus-details",contentUrl:"modules/travel/views/partials/bus-details.html",iconClass:"fa fa-bus",info:"Bus",header:"Bus"},*/
        {detailLink:"#flight-details",contentUrl:"modules/travel/views/partials/flight-details.html",iconClass:"fa fa-plane",info:"Flights",header:"Flight from Bhubaneswar"},
        {detailLink:"#traffic-information",contentUrl:"modules/travel/views/partials/traffic-information.html",iconClass:"fa fa-car",info:"Traffic Mobility Plan",header:"Traffic details"},
        {detailLink:"#fuel-pump",contentUrl:"modules/travel/views/partials/fuel-pump.html",iconClass:"fa fa-tachometer",info:"Fuel Pump",header:"Fuel Pump"},
      ];
      $scope.trafficElement = [
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-bus",info:"Buses"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-bus",info:"Tourist Buses"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-truck",info:"Heavy/Medium Vehicle"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-bus",info:"Town Bus /Small City Bus"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-car",info:"Light Vehicles (Car/Sumo/Bolero/Scorpio)"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-train",info:"Auto Rickshaw (Three Wheelers)"},
        {contentUrl:"modules/travel/views/partials/traffic-details.html",iconClass:"fa fa-motorcycle",info:"Two Wheelers"}
      ];
      $scope.flightcities = [{cityName:"Delhi"},
                            {cityName:"Kolkata"},
                            {cityName:"Mumbai"},
                            {cityName:"Bangalore"},
                            {cityName:"Hydrabad"},
                            {cityName:"Port blair"},
                            {cityName:"Chennai"},
                            {cityName:"Visakhapatnam"}
                            ];
      $scope.cities = [];
      MainService.getAllCity().then(function(pRes) {

      angular.forEach(pRes.data,function(value,key) {
            $scope.cities.push(value);
        });
      });
    }


  	/*
	This is starting control for train information partial
  	*/
    $scope.days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']; 
    $scope.searchVal = {sourceCity:'',destinationCity:'',byDay:''};   
    $scope.fetchTrainDetails = function(){
        $scope.trainDetails = [];
        MainService.showLoaders();
        travelService.getTrainDetails($scope.searchVal).then(function(pRes){
             MainService.hideLoaders();
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
      $scope.trainDetails = [];
      MainService.showLoaders();
        travelService.getTrainDetails($scope.searchVal).then(function(pRes){
             MainService.hideLoaders();
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
    $scope.searchBusDet = {source:'',destination:''};
    $scope.fetchBusDetails = function(){
        console.log($scope.searchBusDet);
        $scope.busDetails = [];
        MainService.showLoaders();
        travelService.getBusDetails($scope.searchBusDet).then(function(pRes){
             MainService.hideLoaders();
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
    $scope.searchFlight = {source:'Bhubaneswar',destination:'',byDay:''};
    $scope.getFlightDetails = function(){
       $scope.flightDetails = [];
       MainService.showLoaders();
        travelService.getFlightDetails($scope.searchFlight).then(function(pRes){
             MainService.hideLoaders();
            var flightDetails = pRes.data;
            $(flightDetails).each(function(i){
                $scope.flightDetails.push(flightDetails[i]);
            });
        });
    }

    $scope.serchFlight = function(){
        $scope.flightDetails = [];
        MainService.showLoaders();
        travelService.getFlightDetails($scope.searchFlight).then(function(pRes){
            MainService.hideLoaders();
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
        MainService.showLoaders();
        travelService.getTrafficInfo(dayType, travelType).then(function(pRes){
             MainService.hideLoaders();
           $scope.information = pRes.data.Info;
        });
    }
    /*
    This is END control for traffic Mobily plan
    */

    $scope.routeSubView = function(pUrl,heading){
        if(pUrl == 'modules/travel/views/partials/fuel-pump.html'){
            $scope.$emit(MainEvent.INIT_MAP,{data:"gas_station"});
        }
        else{
            $scope.contentUrl = pUrl;
            $scope.heading = heading;
        }
    }
    
}]);