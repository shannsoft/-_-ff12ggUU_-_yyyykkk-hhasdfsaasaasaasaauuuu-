angular.module("home").controller("homeController",['$scope','$rootScope','MainService','AppModelService','MainEvent','HomeService','$interval',function($scope,$rootScope,MainService,AppModelService,MainEvent,HomeService,$interval){
  var map;
  var infowindow;
  var mapSearch = '';
  var directionsDisplay;
  var directionsService;
  var stepDisplay;
  var markerArray = [];
  $scope.notifications = [];

  $scope.homeInit = function(){
    $scope.contentUrl = HomeService.getContentUrl();
    MainService.showLoaders();
    HomeService.getNotification().then(function(pRes){
          MainService.hideLoaders();
          $scope.notifications = pRes.data;
      });
    //HomeService.setContentUrl('modules/home/views/partials/mainMenu.html');
    $scope.heading = HomeService.getHeading();
    $scope.menuOptionList = AppModelService.getMenuOptions();
    console.log("homeInit  ");
    $interval(function(){
      // calling service to get latest 10 notifications

      HomeService.getNotification().then(function(pRes){
          $scope.notifications = pRes.data;
      });
    // $scope.notifications = [{header:"header",detail:"deatil"},{header:"header",detail:"deatil"},{header:"header",detail:"deatil"}];
    },1000*60*5);  // calling interval for each 10 minutes after init of application
  }

  $scope.changeContentUrl = function(pUrl){
    $scope.contentUrl = pUrl;
     HomeService.setContentUrl(pUrl);

  }
  $rootScope.$on(MainEvent.INIT_MAP,function(event,pRes){
      HomeService.setHeading('ATM');
      HomeService.setContentUrl('modules/home/views/partials/map-view.html');
      mapSearch  = pRes.data;
      $scope.geoFindMe();
      window.location = '#/';
  });

  $scope.geoFindMe = function(){
    if (!navigator.geolocation){
      output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
      return;
    }
    function success(position) {
      var latitude  = position.coords.latitude;
      var longitude = position.coords.longitude;
      console.log('latitude',latitude,'longitude',longitude);
      $scope.foundOnMap(latitude,longitude);
    };
    function error() {
      output.innerHTML = "Unable to retrieve your location";
    };
    navigator.geolocation.getCurrentPosition(success, error);
  }
  $scope.foundOnMap = function(lat,lan) {
    var pyrmont = new google.maps.LatLng(lat, lan);
    map = new google.maps.Map(document.getElementById('map-canvas'), {
        center: pyrmont,
        zoom: 15
    });
    if(mapSearch != 'atm' && mapSearch != 'gas_station'){
       var rendererOptions = {
        map: map
      }
      directionsService = new google.maps.DirectionsService();
      directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);
      stepDisplay = new google.maps.InfoWindow();
      var geocoder = new google.maps.Geocoder();


      geocoder.geocode({'latLng': pyrmont }, function(results, status) {
        if(status == google.maps.GeocoderStatus.OK) {
            showRout(results[0]['formatted_address']);
        };
      });
    }
    else{
      

      var request = {
        location: pyrmont,
        radius: 5000,
        types: [mapSearch]
      };

      infowindow = new google.maps.InfoWindow();
      var service = new google.maps.places.PlacesService(map);
      service.nearbySearch(request, callback);
    }
  }
  function callback(results, status) {
    if (status == google.maps.places.PlacesServiceStatus.OK) {
      for (var i = 0; i < results.length; i++) {
        createMarker(results[i]);
      }
    }
  }

  function createMarker(place) {
    var placeLoc = place.geometry.location;
    var marker = new google.maps.Marker({
      map: map,
      position: place.geometry.location
    });
    google.maps.event.addListener(marker, 'click', function() {
      infowindow.setContent(place.name);
      infowindow.open(map, this);
    });
  }
  function showRout(pstart){
    for (var i = 0; i < markerArray.length; i++) {
      markerArray[i].setMap(null);
    }
    markerArray = [];
    var start = pstart;
    var end = mapSearch;
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

  function attachInstructionText(marker, text) {
    google.maps.event.addListener(marker, 'click', function() {
      stepDisplay.setContent(text);
      stepDisplay.open(map, marker);
    });
  }
}]);	