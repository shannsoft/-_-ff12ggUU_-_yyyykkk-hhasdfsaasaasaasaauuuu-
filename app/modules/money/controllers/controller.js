angular.module("money").controller("moneyController",['$scope','$rootScope','AppModelService', function ($scope,$rootScope,AppModelService){
  	$scope.initMoney = function(){
      $scope.contentUrl='modules/money/views/partials/money-lower.html';
      $scope.heading = 'Money';
      $scope.menuOptionList = AppModelService.getMenuOptions();
    }
  	$scope.moneyOptionList = [
  		{detailLink:"icici-atm.html",icon:"img/atm.png",info:"Nearest ATM"},
  		{detailLink:"icici-branches.html",icon:"img/branches.png",info:"Branches"},
  		{detailLink:"foreign-exchange.html",icon:"img/fund-transfer.png",info:"Foreign Exchange"},
  		{detailLink:"icici-exchange-rate.html",icon:"img/exchange-rate.png",info:"Currency Converter"},
  	];
}]);