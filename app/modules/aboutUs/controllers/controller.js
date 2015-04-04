angular.module("aboutUs").controller("aboutUsController",['$scope','$rootScope','MainService','AppModelService','AboutUsService', function ($scope,$rootScope,MainService,AppModelService,AboutUsService){
  	$scope.initAboutUs = function(){
        console.log("initAboutUs");
      $scope.notifications = AppModelService.getNotification();
      $scope.contentUrl='modules/aboutUs/views/partials/aboutUs-lower.html';
      $scope.heading = 'About Us';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.aboutUsOptionList = [
        {label:"Temple Schedule",detailPage:"template-schedule.html" , iconImgPath: "img/hotels.jpg"},
        {label:" About Nabakalebara",detailPage:"about-nabakalebara.html" , iconImgPath: "img/guest-house.jpg"},
      ];
    };

    
  	/*
	This is starting control for train information partial
  	*/
    $scope.fetchSchedule=function(pval){
      var value=$scope.convert(pval);
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
  	/*$scope.templeScheduleList = '{'+
    '"schedules": ['+
        '{'+
            '"ScheduleId": "1",'+
            '"ScheduleName": "surya namaskar",'+
            '"ScheduleContent": "Surya namaskar by loard Jaganath",'+
            '"StartTime": "6AM",'+
            '"EndTime": "7AM",'+
            '"StartDate": "5-4-2015",'+
            '"EndDate": "9-4-2015"'+
        '},'+
        '{'+
            '"ScheduleId": "2",'+
            '"ScheduleName": "Alti",'+
            '"ScheduleContent": "Alti for loard Jaganath",'+
            '"StartTime": "7AM",'+
            '"EndTime": "8AM",'+
            '"StartDate": "9-4-2015",'+
            '"EndDate": "12-4-2015"'+
        '},'+
        '{'+
            '"ScheduleId": "3",'+
            '"ScheduleName": "surya namaskar",'+
            '"ScheduleContent": "Anna for loard Jaganath",'+
            '"StartTime": "8AM",'+
            '"EndTime": "9AM",'+
            '"StartDate": "5-4-2015",'+
            '"EndDate": "9-4-2015"'+
        '},'+
        '{'+
            '"ScheduleId": "4",'+
            '"ScheduleName": "surya namaskar",'+
            '"ScheduleContent": "Surya namaskar by loard Jaganath",'+
            '"StartTime": "9AM",'+
            '"EndTime": "10AM",'+
            '"StartDate": "5-4-2015",'+
            '"EndDate": "9-4-2015"'+
        '}]}';
*/
	/*var parseData = JSON.parse($scope.templeScheduleList);
	$(parseData.schedules).each(function(i){
   
    var scheduleDetails = {};
    scheduleDetails.ScheduleName = parseData.schedules[i].ScheduleName;
    scheduleDetails.ScheduleContent = parseData.schedules[i].ScheduleContent;
    scheduleDetails.StartTime = parseData.schedules[i].StartTime;
    scheduleDetails.EndTime = parseData.schedules[i].EndTime;
    scheduleDetails.StartDate = parseData.schedules[i].StartDate;
    scheduleDetails.EndDate = parseData.schedules[i].EndDate;
    $scope.scheduleDetails.push(scheduleDetails);
	});*/
}]);