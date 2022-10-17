// Demo.multiLineDest
// 
// Created by Brent Raymond on 10/15/22
// Purpose: 
// 
// Note:
//  
// History:


var $0 : Integer

Case of 
	: (FORM Event:C1606.code=On Drag Over:K2:13)
		$0:=-1  // reject
		
		Case of 
			: (Pasteboard data size:C400("4DMethodSelection")>0)
				$0:=0  // accept
				
		End case 
		
		
	: (FORM Event:C1606.code=On Drop:K2:12)
		var $eData : Object
		var $xBlob : Blob
		
		Case of 
			: (Pasteboard data size:C400("4DMethodSelection")>0)
				GET PASTEBOARD DATA:C401("4DMethodSelection"; $xBlob)
				
				BLOB TO VARIABLE:C533($xBlob; $cData)
				
				For each ($eData; $cData)
					Form:C1466.multiLineDest.push($eData)
					
				End for each 
				
		End case 
		
End case 
