/// @description Insert description here
// You can write your code in this editor
event_inherited()
//var strLength = string_width(text)+16
//var _width = strLength / sprite_width_begin
draw_sprite_ext(
				sprite_index,
				image_index,
				startX + anchorX,
				startY + anchorY,
				image_xscale,//+cos(current_time/123)/5,
				image_yscale,//+cos(current_time/100)/5,
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

//draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_text(startX + anchorX, startY + anchorY, text)
draw_set_color(c_white)

//sprite_collision_mask()