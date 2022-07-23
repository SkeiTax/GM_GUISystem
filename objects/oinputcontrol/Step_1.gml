/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if (keyboard_key != 0)
	mode = InputMode.keyboard

if (mouse_button != 0 || point_distance(pre_mouse_x, pre_mouse_y, mouse_x, mouse_y) > 4)
	mode = InputMode.mouse

gamepad_button = 0

var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
{
    if gamepad_is_connected(i) 
	{
		if (global.firstGamepad = noone) 
		{
			global.firstGamepad = i
		}
		gamepad_button += gamepad_button_check(i, gp_face1)
		gamepad_button += gamepad_button_check(i, gp_face2)
		gamepad_button += gamepad_button_check(i, gp_face3)
		gamepad_button += gamepad_button_check(i, gp_face4)
		
		gamepad_button += gamepad_button_check(i, gp_shoulderl)
		gamepad_button += gamepad_button_check(i, gp_shoulderlb)
		gamepad_button += gamepad_button_check(i, gp_shoulderr)
		gamepad_button += gamepad_button_check(i, gp_shoulderrb)
		
		gamepad_button += gamepad_button_check(i, gp_select)
		gamepad_button += gamepad_button_check(i, gp_start)
		gamepad_button += gamepad_button_check(i, gp_stickl)
		gamepad_button += gamepad_button_check(i, gp_stickr)
		
		gamepad_button += gamepad_button_check(i, gp_padu)
		gamepad_button += gamepad_button_check(i, gp_padd)
		gamepad_button += gamepad_button_check(i, gp_padl)
		gamepad_button += gamepad_button_check(i, gp_padr)
		
		gamepad_set_axis_deadzone(i, 0.15);
		
		gamepad_button += abs(gamepad_axis_value(i, gp_axislh))
		gamepad_button += abs(gamepad_axis_value(i, gp_axislv))
		gamepad_button += abs(gamepad_axis_value(i, gp_axisrh))
		gamepad_button += abs(gamepad_axis_value(i, gp_axisrv))
		
	} 
}


if (gamepad_button != pre_gamepad_button)
	mode = InputMode.gamepad

pre_mouse_x = mouse_x
pre_mouse_y = mouse_y

pre_gamepad_button = gamepad_button