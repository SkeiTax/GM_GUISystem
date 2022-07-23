// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GUIPop(){
	if (!instance_exists(oGUIControl))
		instance_create_layer(0,0,"GUI",oGUIControl)
	
	
	var _id = ds_stack_top(oGUIControl.GUIStack)
	instance_destroy(_id)
	delete _id
	ds_stack_pop(oGUIControl.GUIStack)
	
	var tmp = ds_stack_top(oGUIControl.GUIStack)
	if (tmp != undefined)
	{
		GUIActivate(tmp)
	}
	oGUIControl.GUISize--
}