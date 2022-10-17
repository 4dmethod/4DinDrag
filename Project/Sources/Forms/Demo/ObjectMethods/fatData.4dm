// Demo.fatData
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
		$0:=-1  // reject
		
		Case of 
			: (Pasteboard data size:C400("4DMethodSignal")>0)
				$0:=0  // accept
				
		End case 
		
		
	: (FORM Event:C1606.code=On Drop:K2:12)
		var $oData : Object
		var $xBlob : Blob
		var $bSignaled : Boolean
		
		Case of 
			: (Pasteboard data size:C400("4DMethodSignal")>0)
				GET PASTEBOARD DATA:C401("4DMethodSignal"; $xBlob)
				
				BLOB TO VARIABLE:C533($xBlob; $oData)
				
				var $oSignal : 4D:C1709.Signal
				
				$oSignal:=New signal:C1641("I am ready for BIG DRAG!")  // optional description
				
				$lProgress:=Progress New
				Progress SET MESSAGE($lProgress; "Getting dragged data"; True:C214)
				
				CALL FORM:C1391($oData.windowRef; $oData.gatherMethod; \
					$oData.objectName; $oSignal)
				
				// https://doc.4d.com/4Dv19/4D/19.4/signalwait.305-6023374.en.html
				$bSignaled:=$oSignal.wait(10)  // seconds
				
				Progress QUIT($lProgress)
				
				If ($bSignaled)
					Form:C1466.fatData.combine($oSignal.data)
					
				Else 
					ALERT:C41("That data was too big, and I got impatient :(")
					
				End if 
				
		End case 
		
End case 
