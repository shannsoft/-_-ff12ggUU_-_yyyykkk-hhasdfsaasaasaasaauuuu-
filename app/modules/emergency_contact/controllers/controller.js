angular.module("emerContact").controller("emerContactController",['$scope','$rootScope','AppModelService','EmergencyContactService','MainService', function ($scope,$rootScope,AppModelService,EmergencyContactService,MainService){
	$scope.initEmergency = function(){
       console.log("initEmergency");
       $scope.notifications = AppModelService.getNotification();
      $scope.contentUrl='modules/emergency_contact/views/partials/econtact-lower.html';
      $scope.heading = 'Emergency Contact';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.emerContactOptionList = [
  		{detailLink:"",contentUrl:"modules/emergency_contact/views/partials/localAuthority.html",iconClass:"fa fa-users",info:"Local Authorities"},
      {detailLink:"",contentUrl:"modules/emergency_contact/views/partials/temple-administration.html",iconClass:"fa fa-university",info:"Temple Administration"},
      {detailLink:"",contentUrl:"modules/emergency_contact/views/partials/health_care_sanitation.html",iconClass:"fa fa-medkit",info:"Health Care & Sanitation"}
  	  ];
      
    }
    $scope.routeSubView = function(pUrl){
        $scope.contentUrl = pUrl;
    }
    /*codes for local authority starts */
    $scope.localAuthorities = [];
    $scope.initLocalAuthority = function(){
        MainService.showLoaders();
        EmergencyContactService.fetchLocalAuthorities().then(function(pRes){
           MainService.hideLoaders();
            $scope.localAuthorities = pRes.data;
            
        });
    }
    /*codes for local authority ends*/
    
    /*codes  fro temple admin starts*/

    $scope.initTempleAdmin = function(){
      $scope.templeAdmins = [];
      MainService.showLoaders();
      EmergencyContactService.fetchTempleAdmin().then(function(pRes){
             MainService.hideLoaders();
            $scope.templeAdmins = pRes.data;
            
        });
    }
    /*codes  fro temple admin ends*/
    /*codes for health care sanitation starts*/
    $scope.content = [];

    $scope.initHealthCareSanitation = function(){
      $scope.healthcareList = [
          {table_name:"hospital",contentUrl:"",iconClass:"fa fa-users",info:"Hospital At Puri"},
          {table_name:"trauma_care",contentUrl:"",iconClass:"fa fa-university",info:"Trauma Care"},
          {table_name:"fast_aid",contentUrl:"",iconClass:"fa fa-medkit",info:"Fast AID Center"},
          {table_name:"toilet",contentUrl:"",iconClass:"fa fa-medkit",info:"Temporary Toilets"}
      ];

    }
    $scope.onSelectHealthCare = function(option)
    {
        EmergencyContactService.fetchSelectedEmergencyContact(option.table_name).then(function(pRes){
            $scope.contents = pRes.data;
            $scope.contentUrl = "modules/emergency_contact/views/partials/health_care_sanitation_global.html";
        });
    }
    /*codes for health care sanitation ends*/
  	
}]);