AppRoot.controller("MainController", ['$scope','$rootScope', function ($scope,$rootScope){
	
	$rootScope.getNumber = function(pObj, pNumber)
	{
		
		if(pNumber)
		{
			if(pNumber.length <= 10 && pObj.stdCode)
			{
				pNumber = pObj.stdCode+""+pNumber;
			}
			
		}
		return pNumber;
	}
}]);