// Demo.customDrop
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
		// check for picture data
		
		$0:=-1  // reject
		
		Case of 
			: (Pasteboard data size:C400("com.4d.private.picture.4dpicture")>0)
				$0:=0  // accept
				
			: (Pasteboard data size:C400("com.4d.private.text.utf16")>0)
				// text, no way!
				BEEP:C151
				
		End case 
		
	: (FORM Event:C1606.code=On Drop:K2:12)
		// what is in the pasteboard?
		ARRAY TEXT:C222($at4Dsignatures; 0)
		ARRAY TEXT:C222($atNativeTypes; 0)
		
		GET PASTEBOARD DATA TYPE:C958($at4Dsignatures; $atNativeTypes)
		
		var $gPic : Picture
		
		GET PICTURE FROM PASTEBOARD:C522($gPic)
		
		OBJECT SET VALUE:C1742("customDrop"; $gPic)
		
		
End case 