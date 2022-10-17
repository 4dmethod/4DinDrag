// Demo.dragJSONFile
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
		
		var $oFile : 4D:C1709.File
		
		$oFile:=File:C1566(Temporary folder:C486+"4dmethod.json"; fk platform path:K87:2)
		$oFile.delete()
		$oFile.create()
		
		$oFile.setText(JSON Stringify:C1217($oData; *))
		
		SET FILE TO PASTEBOARD:C975($oFile.platformPath)
		
		SET DRAG ICON:C1272(Storage:C1525.app.pic)
		
End case 
