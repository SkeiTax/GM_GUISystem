/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


var _lang = "Russian"
switch (global.lang)
{
	case Languages.English:
		_lang = "English"
		break;
		
	case Languages.Russian:
		_lang = "Russian"
		break;
		
	case Languages.Spanish:
		_lang = "Spanish"
		break;
}

draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_text(room_width-250, 25, "Select languag: " + _lang)
draw_set_color(c_white)


