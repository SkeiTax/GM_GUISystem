/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (autoSize)
{
	var sw = sprite_width
	var sh = sprite_height

	width  = string_width(text)  + string_width(" "+string(value_max)) + 16
	height = string_height(text) + string_height(" "+string(value_max)) + 8
	image_xscale = width/sw
	image_yscale = height/sh
}


value_pos_start = 0 //x - (width-24)/2
value_pos_end	= (width-24)/2 + (width)/2 - 32 //
value_pos = 0

isChange = false

if (value == noone)
{
	value = value_min
}
else
{
	if (value < value_min) value = value_min
	if (value > value_max) value = value_min
}

if (fout = noone)
	fout = function(val) {value = val}

/*
sprite_height_begin = sprite_height
sprite_width_begin = sprite_width


if (width && height)
{
	image_xscale = width / sprite_width_begin
	image_yscale = height / sprite_height_begin
}
*/