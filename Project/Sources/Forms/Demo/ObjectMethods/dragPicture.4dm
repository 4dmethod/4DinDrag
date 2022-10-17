// Demo.dragPicture
// 
// Created by Brent Raymond on 10/13/22
// Purpose: 
// 
// Note:
//  
// History:


Case of 
	: (FORM Event:C1606.code=On Begin Drag Over:K2:44)
		var $oFile : 4D:C1709.File
		var $gPic : Picture
		
		// https://doc.4d.com/4Dv19/4D/19.4/File-and-folder-object-pathnames.300-6022906.en.html
		$oFile:=File:C1566("/RESOURCES/4DMethod Logo.png")
		
		READ PICTURE FILE:C678($oFile.platformPath; $gPic)
		
		SET PICTURE TO PASTEBOARD:C521($gPic)
		
		
		var $tText; $tSvgRef; $tTextAreaRef : Text
		var $gPic : Picture
		var $lWidth : Integer
		
		$tText:="Dragging: Some products..."
		$lWidth:=200
		$tColor:="darkorange:50"
		
		$tSvgRef:=SVG_New($lWidth+40; 40)
		
		$tRectRef:=SVG_New_rect($tSvgRef; 5; 5; $lWidth+30; 30; 10; 10; ""; $tColor; 1)
		
		$tTextAreaRef:=SVG_New_textArea($tSvgRef; $tText; 17; 12; 0; 0; "Lucida Grande"; 13; Bold:K14:2)
		SVG_SET_FONT_COLOR($tTextAreaRef; "white")
		
		$gPic:=SVG_Export_to_picture($tSvgRef)
		SVG_CLEAR($tSvgRef)
		
		// https://doc.4d.com/4Dv19/4D/19.4/SET-DRAG-ICON.301-6023851.en.html
		SET DRAG ICON:C1272($gPic; 15; 15)
		
End case 
