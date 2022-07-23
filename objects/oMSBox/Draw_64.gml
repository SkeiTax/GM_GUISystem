var _width = (string_width(outText) + 16) / sprite_width
var _height = (string_height(outText) + 12) / sprite_width

draw_sprite_ext(
				sprite_index,
				image_index,
				x,
				y,
				_width+cos(current_time/123)/10,
				_height+cos(current_time/100)/10,
				0,
				c_white,
				1)

draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_black)

draw_text(x,y,outText)
draw_text(x,y-25,endTime-time)

draw_set_color(c_white)