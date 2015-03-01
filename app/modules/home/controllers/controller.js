angular.module("home").controller("homeController",['$scope','$rootScope','HomeService', function($scope,$rootScope,HomeService){
   HomeService.getCountries().then(function(pRes){
   	console.log(pRes.data);
   	
   });
}]);