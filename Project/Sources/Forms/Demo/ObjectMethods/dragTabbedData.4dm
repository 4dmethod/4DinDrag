// Demo.dragTabbedData
// 
// Created by Brent Raymond on 10/13/22
// Purpose: 
// 
// Note:
//  
// History:


Case of 
	: (FORM Event:C1606.code=On Begin Drag Over:K2:44)
		var $tData : Text
		
		$tData:="1\t2\t3\t4\t5\ra\tb\tc\td\te\r"*100
		
		SET TEXT TO PASTEBOARD:C523($tData)
		
		
End case 
