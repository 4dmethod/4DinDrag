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
		var $oData : Object
		
		$oData:=New object:C1471
		$oData.disco:="Hagrid"
		$oData.group:="4DMethod"
		
		SET TEXT TO PASTEBOARD:C523(JSON Stringify:C1217($oData; *))
		
		SET DRAG ICON:C1272(Storage:C1525.app.pic)
		
End case 
