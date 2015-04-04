angular.module("aboutUs").controller("aboutUsController",['$scope','$rootScope','MainService','AppModelService','AboutUsService', function ($scope,$rootScope,MainService,AppModelService,AboutUsService){
  	$scope.initAboutUs = function(){
      $scope.notifications = AppModelService.getNotification();
      $scope.contentUrl='modules/aboutUs/views/partials/aboutUs-lower.html';
      $scope.heading = 'About Us';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.aboutUsOptionList = [
        {label:"Temple Schedule",detailPage:"" ,contentUrl:"modules/aboutUs/views/partials/template-schedule.html", iconImgPath: "fa fa-calendar"},
        {label:" About Nabakalebara",detailPage:"" ,contentUrl:"modules/aboutUs/views/partials/about-nabakalebara.html", iconImgPath: "fa fa-file-text"},
      ];
    };
  	/*
	This is starting control for train information partial
  	*/
    $scope.fetchSchedule=function(pval){
      var value = $scope.convert(pval);
      AboutUsService.getTempleSchedule(value);
    };

    $scope.getTempleSchedule = function (pval) {
        if(!pval)
            pval='';
        $scope.templeScheduleList = [];
         MainService.showLoaders();
        AboutUsService.getTempleSchedule(pval).then(function(pRes){
            MainService.hideLoaders();
            var scheduleDetails = pRes.data.schedule;
             $(scheduleDetails).each(function(i){
                    $scope.templeScheduleList.push(scheduleDetails[i]);
                });
        });
    };

    $scope.convert=function(str) {
    var date = new Date(str),
        mnth = ("0" + (date.getMonth()+1)).slice(-2),
        day  = ("0" + date.getDate()).slice(-2);
    return [ date.getFullYear(),mnth,day].join("-");
    };

  	$scope.scheduleDetails = [];
    $scope.days = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];
  	$scope.routeSubView = function(pval){  
        $scope.contentUrl = pval;
    }
}]);