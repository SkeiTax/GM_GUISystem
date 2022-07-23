/// @description Insert description here
// You can write your code in this editor


//var _string_width = string_width(text)
//var _string_height = string_height(text)

draw_sprite_ext(sliSprite,
				image_index,
				startX + anchorX,
				startY + anchorY,
				image_xscale, //+cos(current_time/123)/5,
				image_yscale, //+cos(current_time/100)/5,
				0,
				c_white,
				1)

var lineSize = sprite_get_height(sliLineSprite)
draw_sprite_ext(sliLineSprite,
				0,
				startX + anchorX - 10,
				startY + anchorY + sprite_height/4,
				(value_pos_end-value_pos_start+lineSize) / lineSize, //+cos(current_time/123)/5,
				1, //+cos(current_time/100)/5,
				0,
				c_white,
				1)

if (GUIBefore.GUITarget != noone && oInputControl.mode != InputMode.mouse)
{
	if (GUIBefore.GUITarget == id)
	draw_sprite_ext(
					STarget,
					image_index,
					startX + anchorX,
					startY + anchorY,
					image_xscale + 0.2,//+cos(current_time/123)/5,
					image_yscale + 0.2,//+cos(current_time/100)/5,
					0,
					c_white,
					1)
}


draw_sprite(sliButtonSprine, 
			0, 
			startX + anchorX - (width-24)/2 + value_pos, 
			startY + anchorY + sprite_height/4)


draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_text(startX + anchorX - width/2+8,
			startY + anchorY - sprite_height/5,
			text)

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(startX + anchorX + (width)/2 - 32 + 16, 
			startY + anchorY - 1 + sprite_height/4, 
			floor(value))
draw_set_color(c_white)
