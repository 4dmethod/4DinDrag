Case of 
	: (FORM Event:C1606.code=On Begin Drag Over:K2:44)
		var $oFile : 4D:C1709.File
		var $gPic : Picture
		
		// https://doc.4d.com/4Dv19/4D/19.4/File-and-folder-object-pathnames.300-6022906.en.html
		$oFile:=File:C1566("/RESOURCES/discoHagrid.jpeg")
		
		READ PICTURE FILE:C678($oFile.platformPath; $gPic)
		
		// https://doc.4d.com/4Dv19/4D/19.4/SET-DRAG-ICON.301-6023851.en.html
		SET DRAG ICON:C1272($gPic)
		
End case 
