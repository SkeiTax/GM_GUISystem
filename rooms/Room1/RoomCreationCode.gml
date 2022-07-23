if (!instance_exists(oInputControl))
	instance_create_layer(0, 0, "GUI", oInputControl)
	
if (!instance_exists(oLanguageControl))
	instance_create_layer(0, 0, "GUI", oLanguageControl)

GUIPush(oGUIMainMenu)