angular.module("money").controller("moneyController",['$scope','$rootScope','AppModelService','moneyService','MainEvent', function ($scope,$rootScope,AppModelService,moneyService,MainEvent){
    $scope.cityDetails = [];
  	$scope.branchList = [];
    $scope.initMoney = function(){
      $scope.contentUrl='modules/money/views/partials/money-lower.html';
      $scope.heading = 'Money';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.moneyOptionList = [
        {detailLink:"icici-atm.html",icon:"img/atm.png",contentUrl:"modules/money/views/partials/icici-atm.html", info:"Nearest ATM"},
        {detailLink:"icici-branches.html",icon:"img/branches.png",contentUrl:"modules/money/views/partials/icici-brances.html", info:"Branches"},
        {detailLink:"foreign-exchange.html",icon:"img/fund-transfer.png",contentUrl:"modules/money/views/partials/foreign-exchange.html",info:"Foreign Exchange"},
        {detailLink:"icici-exchange-rate.html",icon:"img/exchange-rate.png",contentUrl:"modules/money/views/partials/icici-exchange-rate.html",info:"Currency Converter"},
      ];
    }
    //branches controller start
    moneyService.getCity().then(function(pRes){
        var cityDetails = pRes.data;
        $(cityDetails).each(function(i){
            $scope.cityDetails.push(cityDetails[i]);
        });
    });
    $scope.fetchBranchList = function(cityid){
      $scope.branchList = [];
      moneyService.getBranchList(cityid).then(function(pRes){
        var branchList = pRes.data;
        $(branchList).each(function(i){
            $scope.branchList.push(branchList[i]);
        });
      });
    }
    $scope.fetchExchangeList = function(cityid){
      $scope.exchangeList = [];
      moneyService.getExchangeList(cityid).then(function(pRes){
        var exchangeList = pRes.data;
        $(exchangeList).each(function(i){
            $scope.exchangeList.push(exchangeList[i]);
        });
      });
    }
    //branches controller end
    $scope.routeSubView = function(pUrl){
      if(pUrl == "modules/money/views/partials/icici-atm.html")
      {
        $scope.$emit(MainEvent.INIT_MAP,{data:"atm"});
      }
      else
        $scope.contentUrl = pUrl;
    }

  	
}]);