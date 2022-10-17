// Demo.dragbigData
// 
// Created by Brent Raymond on 10/13/22
// Purpose: 
// 
// Note:
//  
// History:


Case of 
	: (FORM Event:C1606.code=On Begin Drag Over:K2:44)
		var $oData : Object
		
		// put information about the drag source in the pasteboard
		$oData:=New object:C1471
		$oData.windowRef:=Current form window:C827
		$oData.objectName:=OBJECT Get name:C1087(Object current:K67:2)
		$oData.gatherMethod:="getBigDragData"  // method to use with Call Form to get the data
		
		var $xBlob : Blob
		
		VARIABLE TO BLOB:C532($oData; $xBlob)
		
		APPEND DATA TO PASTEBOARD:C403("4DMethodSignal"; $xBlob)  // use custom data type
		
End case 
