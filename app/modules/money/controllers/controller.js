angular.module("money").controller("moneyController",['$scope','$rootScope','AppModelService','MoneyService','MainEvent','MainService', function ($scope,$rootScope,AppModelService,MoneyService,MainEvent,MainService){
    $scope.cityDetails = [];
  	$scope.branchList = [];
    $scope.currenciesObject = {}; // object containing key value for currencies
    $scope.currencies = [];
    $scope.sourceCurrency = {};
    $scope.convertCurrency = {};
    $scope.convertCurrencyValue;
    $scope.reverseConvertCurrencyValue;
    $scope.showResult= false;
    $scope.initMoney = function(){
      $scope.notifications = AppModelService.getNotification();
      $scope.contentUrl='modules/money/views/partials/money-lower.html';
      $scope.heading = 'Money';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      
      if($scope.currencies.length == 0) 
        {
          
            /*MoneyService.getCurrencies().then(function(pRes) {
              $.each($scope.currenciesObject, function(code, rate){
                var obj = {};
                obj.code = code;
                obj.rate = rate;
                $scope.currencies.push(obj);
              });
              // $scope.sourceCurrency = $scope.currencies[0];
              // $scope.convertCurrency = $scope.currencies[0];

          });*/

          $.getJSON("http://openexchangerates.org/api/latest.json?app_id=601daf13b5e342cc836d73c7b5436f8b", function(data) {

               var rates = data.rates;
               $.each(rates, function(code, rate){
                var obj = {};
                obj.code = code;
                obj.rate = rate;
                $scope.currencies.push(obj);
              });
               //console.log($scope.currencies);

          });
    
        }
      
      $scope.moneyOptionList = [
        {detailLink:"icici-atm.html",icon:"img/atm.png",contentUrl:"modules/money/views/partials/icici-atm.html", info:"Nearest ATM"},
        {detailLink:"icici-branches.html",icon:"img/branches.png",contentUrl:"modules/money/views/partials/icici-brances.html", info:"Branches"},
        {detailLink:"foreign-exchange.html",icon:"img/fund-transfer.png",contentUrl:"modules/money/views/partials/foreign-exchange.html",info:"Foreign Exchange"},
        {detailLink:"icici-exchange-rate.html",icon:"img/exchange-rate.png",contentUrl:"modules/money/views/partials/icici-exchange-rate.html",info:"Currency Converter"},
      ];
      MainService.showLoaders();
      MoneyService.getCity().then(function(pRes){
          var cityDetails = pRes.data;
          $(cityDetails).each(function(i){
              $scope.cityDetails.push(cityDetails[i]);
               MainService.hideLoaders();
          });
      });
    }
    //branches controller start

    $scope.fetchBranchList = function(cityid){
      $scope.branchList = [];
      MoneyService.getBranchList(cityid).then(function(pRes){
        var branchList = pRes.data;
        $(branchList).each(function(i){
            $scope.branchList.push(branchList[i]);
        });
      });
    }
    $scope.fetchExchangeList = function(cityid){
      $scope.exchangeList = [];
      MoneyService.getExchangeList(cityid).then(function(pRes){
        var exchangeList = pRes.data;
        $(exchangeList).each(function(i){
            $scope.exchangeList.push(exchangeList[i]);
        });
      });
    }
    //branches controller end
    $scope.routeSubView = function(pUrl,heading){
      if(pUrl == "modules/money/views/partials/icici-atm.html")
      {
        $scope.$emit(MainEvent.INIT_MAP,{data:"atm"});
      }
      else{
        $scope.contentUrl = pUrl;
        $scope.heading = heading;
      }
    }


    /* codes for currency convert starts*/
    $scope.onConvertCurrency = function() {
        $scope.showResult = true;
        if($scope.convertCurrency.rate && $scope.sourceCurrency.rate)
        {

          $scope.convertCurrencyValue = ($scope.convertCurrency.rate/$scope.sourceCurrency.rate);
          $scope.convertCurrencyValue = $scope.convertCurrencyValue.toFixed(2);
          // console.log("converted value is "+$scope.convertCurrencyValue);
          $scope.reverseConvertCurrencyValue = ($scope.sourceCurrency.rate/$scope.convertCurrency.rate);
          $scope.reverseConvertCurrencyValue = $scope.reverseConvertCurrencyValue.toFixed(2);
          // console.log("converted value is "+$scope.convertCurrencyValue);
        }
        else
        {
          alert("select both currency options  to converted !");
        }
    }
    
    $scope.onSelectCurr = function(pCurr,pType){
      $scope.showResult = false;
      if(pType) 
          $scope.convertCurrency = pCurr;
      else
          $scope.sourceCurrency = pCurr;
        //console.log(pCurr,pType);
    }
    /* codes for currency convert ends*/
    $scope.viewOnMap = function(address){ 
      $scope.$emit(MainEvent.INIT_MAP,{data : address});
    }

  	
}]);