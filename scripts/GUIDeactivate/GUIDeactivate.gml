// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GUIDeactivate(GUI){
	var a = GUI.GUIPtr
	if (is_array(a) && a[0] != noone)
	for (var i = 0; i < array_length_1d(a); i++)
	{
		GUIDeactivate(a[i])
	}
	instance_deactivate_object(GUI)
}