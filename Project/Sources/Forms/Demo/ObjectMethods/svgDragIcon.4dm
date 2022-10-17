// Demo.svgDragIcon
// 
// Created by Brent Raymond on 10/13/22
// Purpose: 
// 
// Note:
//  https://doc.4d.com/4Dv19R6/4D/19-R6/4D-SVG-Component.100-5967468.en.html
//
// History:

Case of 
	: (FORM Event:C1606.code=On Begin Drag Over:K2:44)
		var $tText; $tSvgRef; $tTextAreaRef : Text
		var $gPic : Picture
		var $lWidth : Integer
		
		$tText:="Dragging: 9 Objects..."
		$lWidth:=144
		$tColor:="deeppink:50"
		
		$tSvgRef:=SVG_New($lWidth+40; 40)
		
		$tRectRef:=SVG_New_rect($tSvgRef; 5; 5; $lWidth+30; 30; 10; 10; ""; $tColor; 1)
		
		$tTextAreaRef:=SVG_New_textArea($tSvgRef; $tText; 17; 12; 0; 0; "Lucida Grande"; 13; Bold:K14:2)
		SVG_SET_FONT_COLOR($tTextAreaRef; "white")
		
		$gPic:=SVG_Export_to_picture($tSvgRef)
		SVG_CLEAR($tSvgRef)
		
		// https://doc.4d.com/4Dv19/4D/19.4/SET-DRAG-ICON.301-6023851.en.html
		SET DRAG ICON:C1272($gPic; 15; 15)
		
End case 
