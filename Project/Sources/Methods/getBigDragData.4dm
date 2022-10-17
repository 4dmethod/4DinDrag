//%attributes = {}
// getBigDragData
// 
// Created by Brent Raymond on 10/13/22
// Purpose: 
// 
// Note:
//  
// History:


#DECLARE($tObjectName : Text; $oSignal : 4D:C1709.Signal)

var $eData : Object
var $cData; $cSharedData : Collection
var $i : Integer

// generate a million records
$cData:=New collection:C1472

For ($i; 1; 1000000)
	$eData:=New object:C1471
	$eData.pkey:=Random:C100
	$eData.name:="4DMethod"
	$eData.time:=Timestamp:C1445
	
	$cData.push($eData)
	
End for 

// pack the data up in Signal
Use ($oSignal)
	$oSignal.data:=$cData.copy(ck shared:K85:29; $oSignal)
	
End use 

// trigger the Signal to let the destination know it is ready
$oSignal.trigger()

