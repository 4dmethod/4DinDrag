// Demo.multiLineSource
// 
// Created by Brent Raymond on 10/15/22
// Purpose: 
// 
// Note:
//  
// History:


Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		Form:C1466.multiLineData:=New collection:C1472
		Form:C1466.multiLineDest:=New collection:C1472
		
		// multiLineShadowSelection is a copy of current selection
		Form:C1466.multiLineShadowSelection:=New collection:C1472
		
		// is a drag operation underway
		Form:C1466.multiLineDragActive:=False:C215
		
		
	: (FORM Event:C1606.code=On Selection Change:K2:29)
		If (Form:C1466.multiLineDragActive)
			// we know that the current selection was 'lost'
			Form:C1466.multiLineSelected:=Form:C1466.multiLineShadowSelection
			Form:C1466.multiLineDragActive:=False:C215
			
		Else 
			// update the shadow for normal selection changes
			Form:C1466.multiLineShadowSelection:=Form:C1466.multiLineSelected
			
		End if 
		
	: (FORM Event:C1606.code=On Begin Drag Over:K2:44)
		
		If (Form:C1466.multiLineShadowSelection.length>1)
			Form:C1466.multiLineDragActive:=True:C214
			
			// reinstate selected rows
			Form:C1466.multiLineSelected:=Form:C1466.multiLineShadowSelection
			LISTBOX SELECT ROWS:C1715(*; "multiLineSource"; Form:C1466.multiLineShadowSelection; lk replace selection:K53:1)
			
		End if 
		
		// pack up data in the pasteboard
		var $xBlob : Blob
		var $cData : Collection
		
		$cData:=Form:C1466.multiLineSelected.copy()
		
		VARIABLE TO BLOB:C532($cData; $xBlob)
		
		APPEND DATA TO PASTEBOARD:C403("4DMethodSelection"; $xBlob)
		
		
		
End case 
