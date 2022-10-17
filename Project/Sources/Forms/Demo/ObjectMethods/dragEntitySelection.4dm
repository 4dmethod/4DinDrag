// Demo.dragEntitySelection
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
		var $cData : Collection
		var $i : Integer
		
		$cData:=New collection:C1472
		
		For ($i; 1; 5)
			// let's just imagine this came from e.toCollection()
			$eData:=New object:C1471
			$eData.pkey:=Random:C100
			$eData.name:="4DMethod"
			$eData.time:=Timestamp:C1445
			
			$cData.push($eData)
			
		End for 
		
		SET TEXT TO PASTEBOARD:C523(JSON Stringify:C1217($cData; *))
		
		var $xBlob : Blob
		
		VARIABLE TO BLOB:C532($cData; $xBlob)
		
		APPEND DATA TO PASTEBOARD:C403("4DMethodSelection"; $xBlob)
		
		
End case 
