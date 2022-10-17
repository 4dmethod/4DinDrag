Case of 
	: (FORM Event:C1606.code=On Drop:K2:12)
		TRACE:C157
		
		var $pSource : Pointer
		var $lElement; $lProcess : Integer
		
		_O_DRAG AND DROP PROPERTIES:C607($pSource; $lElement; $lProcess)
		// note!!! Dragged source must be actual process variable
		//    $pSource null if you allow 4D to assign a dynamic variable
		
		// if $lProcess#Current process
		//   use Get Process Variable to handle whatever was dragged
		
		
		ALERT:C41("Do something with "+$pSource->)
		
		
End case 