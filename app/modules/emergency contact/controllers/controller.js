angular.module("emerContact").controller("emerContactController",['$scope','$rootScope', function ($scope,$rootScope){
  	$scope.emerContactOptionList = [
  		{detailLink:"#hospital-puri",iconClass:"fa fa-ambulance",info:"Hospitals in Puri"},
  		{detailLink:"#trauma-care",iconClass:"fa fa-medkit",info:"Trauma Care"},
  		{detailLink:"#temple-administration",iconClass:"fa fa-university",info:"Temple Administration"},
  		{detailLink:"#local-authorities",iconClass:"fa fa-users",info:"Local Authorities"},
  	];
}]);