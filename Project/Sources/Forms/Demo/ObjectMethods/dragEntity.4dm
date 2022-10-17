// Demo.dragJSONdata
// 
// Created by Brent Raymond on 10/13/22
// Purpose: 
// 
// Note:
//  
// History:


Case of 
	: (FORM Event:C1606.code=On Begin Drag Over:K2:44)
		var $eData : Object
		// let's just imagine this came from e.toObject()
		
		$eData:=New object:C1471
		$eData.pkey:=Random:C100
		$eData.name:="4DMethod"
		$eData.time:=Timestamp:C1445
		
		SET TEXT TO PASTEBOARD:C523(JSON Stringify:C1217($eData; *))
		
		var $xBlob : Blob
		
		VARIABLE TO BLOB:C532($eData; $xBlob)
		
		APPEND DATA TO PASTEBOARD:C403("4DMethodRecord"; $xBlob)
		
		
End case 
