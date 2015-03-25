AppRoot.factory('MainService',['$http','AppConfig','$rootScope','$ionicPopup','$ionicLoading', function($http,AppConfig,$rootScope,$ionicPopup,$ionicLoading){
   

   /* ionic preloaders starts*/
    var showLoaders = function() {
      $ionicLoading.show({
        template: 'Loading...'
      });
    },
    hideLoaders = function(){
      $ionicLoading.hide();
    },
    showAlertPopUp = function(pTitle,pContent){
    	var alertPopup = $ionicPopup.alert({
             title: pTitle+' !',
             template: pContent
        });
    }
    /* ionic preloaders ends*/
	return {
		showLoaders:showLoaders,
		hideLoaders:hideLoaders,
		showAlertPopUp:showAlertPopUp
	}
}]);