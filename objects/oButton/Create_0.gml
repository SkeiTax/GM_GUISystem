/// @description Insert description here
// You can write your code in this editor
event_inherited()
isChange = false

if (autoSize)
{
	var text_width = string_width(text)+16
	var text_height = string_height(text)+16

	sprite_height_begin = sprite_height
	sprite_width_begin = sprite_width

	if (text_width && text_height)
	{
		image_xscale = text_width / sprite_width_begin
		image_yscale = text_height / sprite_height_begin
	}
}