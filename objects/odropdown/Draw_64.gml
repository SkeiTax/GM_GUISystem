
event_inherited()

draw_sprite_ext(
				sprite_index,
				image_index,
				startX + anchorX,
				startY + anchorY,
				image_xscale,
				image_yscale,
				0,
				c_white,
				1)

draw_sprite(sDDV,
			image_index,
			startX + anchorX + sprite_width/2 - sprite_height/2,
			startY + anchorY)

if (GUIBefore.GUITarget != noone && oInputControl.mode != InputMode.mouse)
{
	if (GUIBefore.GUITarget == id)
	draw_sprite_ext(
					STarget,
					image_index,
					startX + anchorX,
					startY + anchorY,
					image_xscale + 0.2,
					image_yscale + 0.2,
					0,
					c_white,
					1)
}

draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_text(startX + anchorX - sprite_width/2 + 8, startY + anchorY,text)
draw_set_color(c_white)



if (is_array(valuelist))
{
	if (GUIBefore.GUISelect != noone)
	{
		if (GUIBefore.GUISelect = id)
		{
			var line = min(visibleLine, array_length_1d(valuelist))
			
			if (!surface_exists(surf) || surf = noone)
			{
				surf = surface_create(width, line*lineH)
			}
			
			surface_set_target(surf)
			draw_clear_alpha(c_black, 0);
			
			draw_sprite_ext(sprite_index, 
							image_index,
							sprite_width/2,
							lineH*line/2,
							image_xscale,
							((lineH*line)/sprite_height_begin),
							0,
							c_white,
							1)
			for (var i = 0; i < line; i++)
			{
				draw_sprite_ext(sSimpleLine, 
								image_index,
								sprite_width/2,
								lineH*(i+1),
								image_xscale/(2/sprite_width_begin)*0.9,
								1,
								0,
								c_black,
								1)
								
				draw_set_halign(fa_left)
				draw_set_valign(fa_center)
				draw_set_color(c_black)
				draw_text(8, lineH *(i+0.5), valuelist[i+topLine])
				draw_set_color(c_white)
				
				draw_sprite_ext(
					sSelect,
					image_index,
					sprite_width/2,
					lineH * (selectLine - topLine + 0.5),
					image_xscale-0.1,
					1,
					0,
					c_white,
					1)
			}
			surface_reset_target()
			
			draw_surface(surf, startX + anchorX - sprite_width/2, startY + anchorY + sprite_height/2 + 8)
		}
	}
	else
	{
		if (surface_exists(surf))
		{
			surface_free(surf)
			surf = noone
		}
	}
}

if (debug_mode)
{
	draw_set_color(c_black)
	draw_text(150, 25,topLine)
	draw_text(150, 50,selectLine)
	draw_set_color(c_white)
}

draw_set_halign(fa_center)
draw_set_valign(fa_center)