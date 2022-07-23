	
for (var i = 0; i < array_length_1d(GUIPtr); i++){
	instance_destroy(GUIPtr[i])
	delete GUIPtr[i]
}
delete GUIPtr
delete GUI2DPos