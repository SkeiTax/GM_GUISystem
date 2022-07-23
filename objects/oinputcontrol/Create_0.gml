/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
global.keyUp = {_keyboard_key : ord("W"), _gamepad_key : gp_padu}
global.keyDown = {_keyboard_key : ord("S"), _gamepad_key : gp_padd}
global.keyLeft = {_keyboard_key : ord("A"), _gamepad_key : gp_padl}
global.keyRight = {_keyboard_key : ord("D"), _gamepad_key : gp_padr}
global.keySelect = {_keyboard_key : vk_space, _gamepad_key : gp_face1}
global.keyClose = {_keyboard_key : vk_escape, _gamepad_key : gp_face2}

enum InputMode
{
	keyboard,
	mouse,
	gamepad
}

global.firstGamepad = noone

mode = InputMode.keyboard

pre_mouse_x = mouse_x
pre_mouse_y = mouse_y

pre_gamepad_button = 0