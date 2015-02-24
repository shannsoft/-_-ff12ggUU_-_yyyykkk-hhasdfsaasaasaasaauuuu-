AppRoot.factory('HistoryManager',["AppConfig", function(AppConfig) { 
var HistoryManager = {},
	undoRedoHistory = [];
	undoRedoObject = {prejson:'', postJson:'', activeObject:''};
	objectIndex = 0;
	_undoRedoStatus = false;
/*
*When new object added to stage
*/
HistoryManager.addObjectToStack = function(pActiveObject,pPreJson, pPostJson){
	//console.log('pPreJson'+pPreJson);
	//console.log('pPostJson'+pPostJson);
	if(_undoRedoStatus == false){
		undoRedoObject = {prejson:'', postJson:'', activeObject:''};
		undoRedoObject.prejson = pPreJson;
		undoRedoObject.postJson = pPostJson;
		undoRedoObject.activeObject = pActiveObject;
		if(undoRedoHistory.length == AppConfig.HISTORY_LENGTH){
			console.log('AppConfig.HISTORY_LENGTH == '+undoRedoHistory.length);
			undoRedoHistory.shift();
	  		undoRedoHistory.push(undoRedoObject);
		}
		else{
			console.log('AppConfig.HISTORY_LENGTH > '+undoRedoHistory.length);
			undoRedoHistory.push(undoRedoObject);
		}
		objectIndex = undoRedoHistory.length;
	}
	_undoRedoStatus = false;	
}
/*
*undo
*/
HistoryManager.undo = function(){
	_undoRedoStatus = true;
	if(objectIndex > 0){
		objectIndex = objectIndex - 1;
	}
	console.log(objectIndex);
	undoObject = undoRedoHistory[objectIndex];
	return undoObject;
}
/*
*redu
*/
HistoryManager.redo = function(){
	_undoRedoStatus = true;
	console.log(objectIndex);
	redoObject = undoRedoHistory[objectIndex];
	if(typeof(redoObject) != 'undefined' && objectIndex < AppConfig.HISTORY_LENGTH - 1){
		objectIndex = objectIndex + 1;
	}
	return redoObject;
}


//to update undo array
return HistoryManager;

}]);