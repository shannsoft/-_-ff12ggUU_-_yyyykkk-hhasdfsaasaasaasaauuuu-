
AppRoot.directive('logo', ["MainEvent",'HomeService','$timeout',function(MainEvent,HomeService,$timeout) {

	var logoController = function($scope){
		$scope.showHome = function(){
			console.log("logo controller init");
			$timeout(function(){
				HomeService.setContentUrl('modules/home/views/partials/mainMenu.html');
				window.location = "#/";
				if($scope.heading == "ATM") location.reload();
				
			});
		}
	}
	var linker  = function(scope, element, attrs){
		console.log("linker init");
		scope.$watch("heading",function(value){
			console.log("heading changed  "+scope.heading,value);
		});
	}
  return {
    // template: 'Name: {{customer.name}} Address: {{customer.address}}'
    restrict: 'E',
    templateUrl: 'directives/logo_template.html',
    heading: '=',
    controller:logoController,
    link:linker
  };
}]);