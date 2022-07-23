/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

var _mode = InputMode.keyboard
switch (mode)
{
	case InputMode.keyboard:
		_mode = "keyboard"
		break;
		
	case InputMode.mouse:
		_mode = "mouse"
		break;
		
	case InputMode.gamepad:
		_mode = "gamepad"
		break;
}

draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_text(room_width-25, 25, "input mode: " + _mode)

if (debug_mode)
{
	var gp_num = gamepad_get_device_count();
	for (var i = 0; i < gp_num; i++;)
	{
	    if gamepad_is_connected(i)
	    {
	        draw_text(room_width-25, 75 + (i * 25), gamepad_get_description(i));
	    }
	    else
	    {
	        draw_text(room_width-25, 75 + (i * 25), "No Gamepad Connected");
	    }
	}
}

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)