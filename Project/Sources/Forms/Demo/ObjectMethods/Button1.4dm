Case of 
	: (FORM Event:C1606.code=On Clicked:K2:4)
		var $eData : Object
		var $i : Integer
		
		For ($i; 1; 5)
			// let's just imagine this came from e.toCollection()
			$eData:=New object:C1471
			$eData.pkey:=Random:C100
			$eData.name:="4DMethod"
			$eData.time:=Timestamp:C1445
			
			Form:C1466.multiLineData.push($eData)
			
		End for 
		
End case 
