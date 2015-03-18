angular.module("home").controller("homeController",['$scope','$rootScope','MainService','AppModelService','MainEvent','HomeService', function($scope,$rootScope,MainService,AppModelService,MainEvent,HomeService){
  var map;
  var infowindow;
  var mapSearch = '';
  $scope.homeInit = function(){
    $scope.contentUrl = HomeService.getContentUrl();
    //HomeService.setContentUrl('modules/home/views/partials/mainMenu.html');
    $scope.heading = 'Home';
    $scope.menuOptionList = AppModelService.getMenuOptions();
  }
  $rootScope.showNoty = function(){
    alert(0);
  }
  $scope.changeContentUrl = function(pUrl){
    $scope.contentUrl = pUrl;
     HomeService.setContentUrl(pUrl);

  }
  $rootScope.$on(MainEvent.INIT_MAP,function(event,pRes){
      window.location = '#/';
      $scope.heading = 'ATM';
      HomeService.setContentUrl('modules/home/views/partials/map-view.html');
      mapSearch  = pRes.data;
      $scope.geoFindMe();
  });

  $scope.geoFindMe = function(){
    if (!navigator.geolocation){
      output.innerHTML = "<p>Geolocation is not supported by your browser</p>";
      return;
    }
    function success(position) {
      var latitude  = position.coords.latitude;
      var longitude = position.coords.longitude;
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

    var request = {
      location: pyrmont,
      radius: 5000,
      types: [mapSearch]
    };

    infowindow = new google.maps.InfoWindow();
    var service = new google.maps.places.PlacesService(map);
    service.nearbySearch(request, callback);
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
}]);	