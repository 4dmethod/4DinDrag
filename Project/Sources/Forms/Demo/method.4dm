Case of 
	: (FORM Event:C1606.code=On Load:K2:1)
		// https://developer.4d.com/docs/19/FormObjects/tabControl
		OBJECT SET VALUE:C1742("tabControl"; \
			New object:C1471(\
			"index"; 0; \
			"values"; New collection:C1472(\
			"Old Style"; \
			"Automatic"; \
			"On Drop DB"; \
			"Drag Icon"; \
			"Picture"; \
			"Text/File"; \
			"Fancy"; \
			"Really Fancy"; \
			"Multi-line drag")))
		
		// tab 1
		var tOldDraggableTitle : Text
		
		tOldDraggableTitle:="Old Style"
		
		Form:C1466.data:=New collection:C1472
		
End case 
