// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GUIPush(GUI){
	
	if (!instance_exists(oGUIControl))
		instance_create_layer(0,0,"GUI",oGUIControl)
	
	var tmp = ds_stack_top(oGUIControl.GUIStack)
	if (tmp != undefined)
	{
		var foo = GUIDeactivate(tmp)
		delete (foo)
	}
	delete(tmp)	
	
	var gui = instance_create_layer(x, y, "GUI", GUI)
	ds_stack_push(oGUIControl.GUIStack, gui)
	oGUIControl.GUISize++
	return gui
	delete(gui)
}