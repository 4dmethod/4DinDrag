// On Drop
// 
// Created by Brent Raymond on 10/17/22
// Purpose: 
// 
// Note:
// https://doc.4d.com/4Dv19R6/4D/19-R6/On-Drop-database-method.301-5911410.en.html
//  
// History:


TRACE:C157


var $tPath : Text
var $gPic : Picture

// https://doc.4d.com/4Dv19/4D/19.4/Get-file-from-pasteboard.301-6023525.en.html
$tPath:=Get file from pasteboard:C976(1)

READ PICTURE FILE:C678($tPath; $gPic)

Use (Storage:C1525)
	
	Storage:C1525.app:=New shared object:C1526("pic"; $gPic)
	
End use 

ALERT:C41("Picture set in Storage:\r\r"+$tPath)

