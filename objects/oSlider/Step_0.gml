/// @description Insert description here
// You can write your code in this editor

event_inherited()
var lock = false

if (GUIBefore.GUISelect != noone)
	if (GUIBefore.GUISelect != id)
		lock = true


var _value = value

if (!lock)
{
	if (scGetInputReleased (global.keySelect, global.firstGamepad) ||
		scGetInputReleased (global.keyClose, global.firstGamepad) ||
		mouse_check_button_pressed(mb_left) && isChange)
	{
		if (GUIBefore.GUITarget != noone)
		{
			if (GUIBefore.GUITarget = id)
			{
				if (GUIBefore.GUISelect = id)
					GUIBefore.GUISelect = noone
				else
					GUIBefore.GUISelect = id
			}
		}
	}
	else 
	if (GUIBefore.GUISelect != noone)
	{
		if (GUIBefore.GUISelect = id) 
			if (mouse_check_button_released(mb_left) && oInputControl.mode = InputMode.mouse) 
				GUIBefore.GUISelect = noone
	}

	if (GUIBefore.GUISelect != noone)
	if (GUIBefore.GUISelect = id)
	{
		_value -= scGetInputPressed(global.keyLeft, global.firstGamepad);
		_value += scGetInputPressed(global.keyRight, global.firstGamepad);
		_value = clamp(_value, value_min, value_max)
	}

	if collision_point(mouse_x, mouse_y, self, 0, 0)
	{
		if (GUIBefore.GUITarget != noone)
			if (GUIBefore.GUITarget != id)
				GUIBefore.GUITarget = id
	}


	if (mouse_check_button(mb_left) && isChange)
	{
		var _value_pos = clamp((mouse_x - (x - (width-24)/2))/((width-24)/2+(width)/2 - 32), 0, 1)
		_value = lerp(value_min, value_max, _value_pos)
	}
	else
	{
		isChange = false
	}
}


if (value != _value)
{
	fout(_value)
}

value_pos = lerp(0, (width-24)/2+(width)/2 - 32, (value-value_min)/(value_max-value_min))