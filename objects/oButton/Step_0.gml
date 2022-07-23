/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
event_inherited()
var lock = false

if (GUIBefore.GUISelect != noone)
	if (GUIBefore.GUISelect != id)
		lock = true


if (!lock)
{
	if collision_point(mouse_x, mouse_y, self, 0, 0)
	{
		if (GUIBefore.GUITarget != noone)
			if (GUIBefore.GUITarget != id)
				GUIBefore.GUITarget = id
	}

	if (scGetInputReleased (global.keySelect, global.firstGamepad) ||
		scGetInputReleased (global.keyClose, global.firstGamepad) ||
		mouse_check_button_pressed(mb_left) && isChange)
	{
		if (GUIBefore.GUITarget != noone)
		{
			if (GUIBefore.GUITarget = id)
			{
				if (GUIBefore.GUISelect = id)
					GUIBefore.GUISelect = noone
				else
					GUIBefore.GUISelect = id
			}
		}
	}
	else
	{
		if (GUIBefore.GUISelect = id) 
			//if (mouse_check_button_released(mb_left) && oInputControl.mode = InputMode.mouse) 
			GUIBefore.GUISelect = noone
	}


	if (scGetInputReleased(global.keySelect, global.firstGamepad) ||
		mouse_check_button(mb_left))
		if (GUIBefore.GUISelect != noone)
			if (GUIBefore.GUISelect = id)
				if(MBLeftPressed != noone)
					MBLeftPressed()
}