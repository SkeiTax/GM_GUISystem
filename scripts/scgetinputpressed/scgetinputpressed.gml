// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scGetInputPressed(key, gamepadID){
	var out = 0;
	if (is_struct(key))
	{
		out += keyboard_check_pressed(key._keyboard_key)
		out += gamepad_button_check_pressed(gamepadID, key._gamepad_key)
	}
	return out > 0
}