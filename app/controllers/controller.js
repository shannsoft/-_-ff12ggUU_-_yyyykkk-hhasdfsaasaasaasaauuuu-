AppRoot.controller("MainController", ['$scope','$rootScope', function ($scope,$rootScope){
	
	$rootScope.getNumber = function(pObj, pNumber)
	{
		
		if(pNumber)
		{
			if(pObj && pNumber.length < 10 && pObj.stdCode)
			{
				pNumber = pObj.stdCode+""+pNumber;
			}
			else if(pNumber.length >= 10)
			{
				pNumber ="+91"+pNumber;
			}
			
		}
		return pNumber;
	}
}]);