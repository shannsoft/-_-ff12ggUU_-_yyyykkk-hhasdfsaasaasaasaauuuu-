
AppRoot.directive('logo', ["MainEvent",'HomeService','$timeout',function(MainEvent,HomeService,$timeout) {

	var logoController = function($scope){
		$scope.showNotification = true;
		$scope.notiClicked = function(){
			// alert("showNotification cliked");
			$scope.showNotification = !$scope.showNotification;
		}
		$scope.showHome = function(){
			console.log("logo controller init");
			$timeout(function(){
				HomeService.setContentUrl('modules/home/views/partials/mainMenu.html');
				window.location = "#/";
				if($scope.heading == "ATM") location.reload();
				
			});
		}
		$scope.$watch('notifications',function(value){
			
			$scope.notifications = value;
			console.log(value);
		});
	}
	var linker  = function(scope, element, attrs){
		console.log("linker init");
		// scope.$watch("heading",function(value){
		// 	console.log("heading changed  "+scope.heading,value);
		// });
		
		// attrs.$observe('notifications', function(value){
		// 	alert(value);
		// });
	}
  return {
    // template: 'Name: {{customer.name}} Address: {{customer.address}}'
    restrict: 'E',
    templateUrl: 'directives/logo_template.html',
    scope:{

   		 heading: '=',
    	notifications:'=',
    },
   // notifications:'=',
    controller:logoController,
    link:linker
  };
}]);