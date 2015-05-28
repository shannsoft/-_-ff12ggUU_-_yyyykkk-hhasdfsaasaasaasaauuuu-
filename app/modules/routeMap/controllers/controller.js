angular.module("routeMap").controller("routeMapController",['$scope','$rootScope','AppModelService','MainEvent', function ($scope,$rootScope,AppModelService,MainEvent){
    var map;
    var infowindow;
    var mapSearch = '';
    var directionsDisplay;
    var directionsService;
    var stepDisplay;
    var markerArray = [];
    var sourcePlace = '';
    var destinationPlace = 'grand road puri';
    $scope.route = {source:'',destination:''};
    $scope.initRouteMAp = function(){
      $scope.notifications = AppModelService.getNotification();
      $scope.contentUrl='modules/routeMap/views/partials/route-map-lower.html';
      $scope.heading = 'Route Map';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.initializeMap();
    }
    $scope.initofflineMap = function(){
      $scope.notifications = AppModelService.getNotification();
      $scope.contentUrl='modules/routeMap/views/partials/offline-map-lower.html';
      $scope.heading = 'Offline Map';
      $scope.menuOptionList = AppModelService.getMenuOptions();
    }

    $scope.initializeMap = function(){
      if (!navigator.geolocation){
        return;
      }

      function success(position) {
        var latitude  = position.coords.latitude;
        var longitude = position.coords.longitude;
        console.log('latitude',latitude,'longitude',longitude);
        var pyrmont = new google.maps.LatLng(latitude, longitude);
        map = new google.maps.Map(document.getElementById('route-map'), {
          center: pyrmont,
          zoom: 15
        });
        var rendererOptions = {map: map}
        directionsService = new google.maps.DirectionsService();
        directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);
        stepDisplay = new google.maps.InfoWindow();
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode({'latLng': pyrmont }, function(results, status) {
          if(status == google.maps.GeocoderStatus.OK) {
              $scope.showRout(results[0]['formatted_address'] , destinationPlace);
              sourcePlace = results[0]['formatted_address'];
              $scope.route.source = sourcePlace;
          };
        });
      };

      function error() {
        
      };

      navigator.geolocation.getCurrentPosition(success, error);
    }

    //Show root direction
    $scope.showRout = function(pStart,pEnd){
      for (var i = 0; i < markerArray.length; i++) {
        markerArray[i].setMap(null);
      }
      markerArray = [];
      var start = pStart;
      var end = pEnd;
      var request = {
          origin: start,
          destination: end,
          travelMode: google.maps.TravelMode.WALKING
      };
      directionsService.route(request, function(response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
          directionsDisplay.setDirections(response);
          //showSteps(response);
        }
      });
    }

    //Direction through step by step
    function showSteps(directionResult) {
      var myRoute = directionResult.routes[0].legs[0];
      for (var i = 0; i < myRoute.steps.length; i++) {
        var marker = new google.maps.Marker({
          position: myRoute.steps[i].start_location,
          map: map
        });
        attachInstructionText(marker, myRoute.steps[i].instructions);
        markerArray[i] = marker;
      }
    }

    //attach the details text
    function attachInstructionText(marker, text) {
      google.maps.event.addListener(marker, 'click', function() {
        stepDisplay.setContent(text);
        stepDisplay.open(map, marker);
      });
    }

    //Search rout direction for source and destination
    $scope.searchRoute = function(){
      var fsource = ($scope.route.source == '') ? sourcePlace : $scope.route.source;
      var fdestination = ($scope.route.destination == '') ? destinationPlace : $scope.route.destination;
      $scope.showRout(fsource, fdestination);

    }
}]);