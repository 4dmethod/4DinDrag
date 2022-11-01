// Demo.dataList
// 
// Created by Brent Raymond on 10/13/22
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
			: (Pasteboard data size:C400("4DMethodRecord")>0)
				$0:=0  // accept
				
			: (Pasteboard data size:C400("4DMethodSelection")>0)
				$0:=0  // accept
				
		End case 
		
		
	: (FORM Event:C1606.code=On Drop:K2:12)
		var $eData : Object
		var $xBlob : Blob
		
		Case of 
			: (Pasteboard data size:C400("4DMethodRecord")>0)
				GET PASTEBOARD DATA:C401("4DMethodRecord"; $xBlob)
				
				BLOB TO VARIABLE:C533($xBlob; $eData)
				
				If (FORM Event:C1606.row=Null:C1517)
					// to put at the end
					Form:C1466.data.push($eData)
					
				Else 
					// to put at drop row
					Form:C1466.data.insert(FORM Event:C1606.row-1; $eData)
					
					LISTBOX SELECT ROW:C912(*; "dataList"; FORM Event:C1606.row)
					Form:C1466.data:=Form:C1466.data
					
				End if 
				
			: (Pasteboard data size:C400("4DMethodSelection")>0)
				GET PASTEBOARD DATA:C401("4DMethodSelection"; $xBlob)
				
				BLOB TO VARIABLE:C533($xBlob; $cData)
				
				If (FORM Event:C1606.row=Null:C1517)
					Form:C1466.data.combine($cData)
					
				Else 
					Form:C1466.data.combine($cData; FORM Event:C1606.row-1)
					
				End if 
				
				LISTBOX SELECT ROWS:C1715(*; "dataList"; $cData)
				Form:C1466.data:=Form:C1466.data
				
				
		End case 
		
End case 
