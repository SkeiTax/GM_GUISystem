/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < oGUIControl.GUISize; i++)
{
	var strSize = (string_width(string("GUI " + string(i+1)))+16)/sprite_get_height(Sprite1)
	
	draw_set_color(c_white)
	draw_sprite_ext(Sprite1, 0, 70, 20 + 40*(i),strSize, 1, 0, c_white,1)
	
	draw_set_color(c_black)
	draw_text(70, 20 + 40*(i), "GUI " + string(i+1))
	delete strSize
}

/*
draw_text(room_width-50, 50, GUISelect)
draw_set_color(c_white)
//*/