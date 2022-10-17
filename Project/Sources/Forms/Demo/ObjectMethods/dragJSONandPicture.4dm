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
		$oData.happy:="Halloween"
		$oData.group:="4DMethod"
		
		SET TEXT TO PASTEBOARD:C523(JSON Stringify:C1217($oData; *))
		
		var $oFile : 4D:C1709.File
		var $xBlob : Blob
		
		// https://doc.4d.com/4Dv19/4D/19.4/File-and-folder-object-pathnames.300-6022906.en.html
		$oFile:=File:C1566("/RESOURCES/4DMethod Logo.png")
		
		DOCUMENT TO BLOB:C525($oFile.platformPath; $xBlob)
		
		//https://doc.4d.com/4Dv19R6/4D/19-R6/Managing-Pasteboards.300-5911235.en.html#27490
		APPEND DATA TO PASTEBOARD:C403(Picture document:K4:2; $xBlob)
		
		
End case 
