angular.module("aboutUs").controller("aboutUsController",['$scope','$rootScope','MainService','AppModelService','AboutUsService', function ($scope,$rootScope,MainService,AppModelService,AboutUsService){
  	$scope.initAboutUs = function(){
      $scope.notifications = AppModelService.getNotification();
      $scope.contentUrl='modules/aboutUs/views/partials/aboutUs-lower.html';
      $scope.heading = 'About Us';
      $scope.menuOptionList = AppModelService.getMenuOptions();
      $scope.aboutUsOptionList = [
        {label:"Schedule",detailPage:"" ,contentUrl:"modules/aboutUs/views/partials/schedule.html", iconImgPath: "fa fa-calendar"},
        {label:" About Nabakalebara",detailPage:"" ,contentUrl:"modules/aboutUs/views/partials/about-nabakalebara.html", iconImgPath: "fa fa-file-text"},
      ];

      $scope.scheduleOptionList = [
        {label:"Nabakalebara Schedule",detailPage:"" ,contentUrl:"modules/aboutUs/views/partials/template-schedule.html", iconImgPath: "fa fa-calendar"},
        {label:"Daily Schedule",detailPage:"" ,contentUrl:"modules/aboutUs/views/partials/daily-schedule.html", iconImgPath: "fa fa-calendar"},
      ];

      $scope.nabaScheduleList = [
      {heading : "Beginning of Banajaga Yatra",date:"29th March 2015",schedule_content:""},
      {heading : "At midnight their journey to Deuli Matha",date:"30th March 2015",schedule_content:""},
      {heading : "Night Halt at Deuli Matha",date:"2nd April 2015",schedule_content:""},
      {heading : "Puja at Kakatpur Mangala",date:"3rd April 2015",schedule_content:""},
      {heading : "Search of Daru",date:"4th April-17th May 2015",schedule_content:""},
      {heading : "Deba Snana Purnima",date:"2nd June 2015",schedule_content:""},
      {heading : "Beginning of making of idols and Yajna",date:"5th June 2015",schedule_content:""},
      {heading : "Change of brahma at midnight",date:"15th June 2015",schedule_content:""},
      {heading : "Naba jaubana darshan",date:"17th July 2015",schedule_content:""},
      {heading : "Ratha Yatra",date:"18th July 2015",schedule_content:""},
      {heading : "Hera Panchami",date:"22nd July 2015",schedule_content:""},
      {heading : "Bahuda Yatra",date:"26th July 2015",schedule_content:""},
      {heading : "Sunabesha",date:"27th July 2015",schedule_content:""}
      ];

      $scope.dailyScheduleList = [
      {heading : "Dwarfita and Mangal Arati",date:"5:00 AM",schedule_content:"The First ritual of the day is ceremonial opening of the doors, scheduled time for opening of the doors is 5 AM or before that. On some specific occasions, such as - Aswina Ekadasi (next day after Dasahara) to Kartik Purnima and from Dhanu Sankranti to Makar Sankranti Dwarfita time is from 2 AM to 3 AM in the morning"},

      {heading : "Mailam",date:"6:00 AM",schedule_content:"After Mangal Arati the next ritual is Mailam or removal of the dresses and floral decorations of the previous evening. The scheduled time for Mailam is 6 AM but it is generally done after completion of Mangal Arati"},

      {heading : "Abakash",date:"6AM to 6.30 AM",schedule_content:"Ahakash is the morning ablution of the deities just like human beings, this includes cleaning of the teeth; scrapping of the tongue of the deities and thereafter giving them a pleasantbath symbolically. The scheduled time for Abkash is 6 AM to 6.30 AM"},
      {heading : "Sahana Mela",date:"7AM to 8 AM",schedule_content:"Darshanfor one hour normally the scheduled time is from 7AM to 8AM but it varies at times depending on completion of earlier programmes."},

      {heading : "Beshalagi",date:"8:00 AM",schedule_content:"After Sahanamela the deities are again Dressed up which can be witnessed from a little distance i.e. Bhitara Katha. At this time,deities are also adorned with gold and precious stones to suit different festive occasions."},

      {heading : "Rosha Homa Surya Puja and Dwarapal",date:"8AM to 8.30 AM",schedule_content:"While some sevayats are busy with vesha lagi or the Deities, Pujapandas at that time perform Rosha Homa (Fire Sacrifice) at the kitchen and Surya puja at the surya temple near Mukti Mandap. Then the images of two gate keepers named Jaya and Vijaya on the entrance of the Jagamohan of the Temple are worshipped"},

      {heading : "Gopala Ballava Puja",date:"9 AM to 10 AM",schedule_content:"The prescribed time is 9 A.M. This is the time for breakfast of the deities. At this time sweet popcorn (Khai), Khualadus, Coconut sweets (Kora), Ripe banana, Curd, and chipped coconuts etc. are offered as bhogas. Puja is performed in a brief manner with pancha upachar only."},

      {heading : "Sakala Dhupa(Morning food offering)",date:"10:00 AM to 10 30 AM",schedule_content:"At this time puja is performed by three Pujapandas with 16 Upachars or Sodasha Upachars..The cost of the dhoop Pujas and Ballavs are borne by the Temple Administration. Previously Raja-Superintendent of the temple born the cost of materials for preparation of Bhoga. So these Bhogas are also called Raja Bhoga or Kotha Bhoga."},

      {heading : "Mailam and Bhoga Mandap:",date:"10:30 AM to 11 Am",schedule_content:"After Morning Dhupa or Puja the Deities change their clothes and again Puja takes places in Bhoga Mandap, a place behind the Garuda pillar of Jagamohan. Huge quantity of Bhogas such as Rice, Dal, Curries, Saga and Cakes of different kinds etc. are offered to the Deities."},

      {heading : "Madhyanha (Afternoon food offering)",date:"11 AM to 1 PM",schedule_content:"Like Sakal Dhupa, this puja is also performed with Shodasha Upachar in the afternoon. The Bhoga items are more in number than that of Morning Dhupa. One can go near to the Ratna Simhasan for darshan by paying special Darshan fee of Rs. 10/- after Madhyanha Dhupa and Sakal Dhupa."},

      {heading : "Madhyanha Pahudha ",date:"1 PM to 1.30 PM",schedule_content:"If rituals have been performed in time and if time permits, the Deities retire for the afternoon."},

      {heading : "Sandhya Aarati",date:"",schedule_content:"In the evening again aaratis are performed after Madhyana Dhupa Mailam. On Ekadashi day, the deities change their clothes and wear another set after Aarati is over."},

      {heading : "Sandhya Dhupa",date:"7 PM to 8 PM",schedule_content:"After Sandhya Aarati again Bhogas are offered to the deities in the same manner like Sakala and Madhyanha Dhupa but this time Bhoga amount is less in quantity and number. After Puja again lamp offering is made which is called as Jaya Mangala Aarati."},

      {heading : "Mailam and Chandana lagi",date:"",schedule_content:"After Sandhya Dhoopa deities change their clothes and are annointed with Sandal paste mixed with champhor, keshar and Kasturi. One can witness this ritual by paying special Darshan fees of Rs. 10/-."},

      {heading : "Badashringar Vesha",date:"",schedule_content:"After Chandan lagi, deities are dressed with Baralagi Patta (silken robes on which some portions of Geeta Govinda of Jayadev are woven in to the texture of these robes) and flower ornaments."},

      {heading : "Badashringara Bhoga",date:"",schedule_content:"This is the last bhoga of the day. Puja is offered with Pancha Upachar by the Puja Pandas with Pakhal (watered rice), Kadali bada, Kshiri, Kanji etc"},

      {heading : "Khata Seja Lagi and Pahuda",date:"12 Midnight",schedule_content:"The bedsteads of the deities are arranged. The Deity of Sayan Thakura is carried from Bhandarghar to Ratnavedi or Ratnasimhasana and place the deity near Lord Jagannath. Then follows offering of green coconut, betels and camphor aarati and then deities retire to their beds. The door is sealed then by the Sevayat (Talichha Mohapatra). Temple is closed and no visitors or outsiders are allowed to remain inside."}
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
  	$scope.routeSubView = function(pval,heading){
      $scope.heading = heading;
      $scope.contentUrl = pval;
    }
}]);