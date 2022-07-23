
// Inherit the parent event
event_inherited();

var lock = false

if (GUIBefore.GUISelect != noone)
	if (GUIBefore.GUISelect != id)
		lock = true



if (!lock)
{

	if collision_point(mouse_x, mouse_y, self, 0, 0)
	{
		if (GUIBefore.GUITarget != noone)
			if (GUIBefore.GUITarget != id)
				GUIBefore.GUITarget = id
	}

	if (scGetInputReleased(global.keySelect, global.firstGamepad))
		if (GUIBefore.GUITarget != noone)
			if (GUIBefore.GUITarget = id)
				if(MBLeftPressed != noone)
					MBLeftPressed()

	if (scGetInputReleased (global.keySelect, global.firstGamepad) ||
		scGetInputReleased (global.keyClose, global.firstGamepad) ||
		mouse_check_button_released(mb_left) && isChange)
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
	//else if (mouse_check_button_released(mb_left) && oInputControl.mode = InputMode.mouse) 
	//	GUIBefore.GUISelect = noone
}


if (GUIBefore.GUISelect != noone)
if (GUIBefore.GUISelect = id)
{
	if (oInputControl.mode != InputMode.mouse)
	{
		
		selectLine += scGetInputPressed(global.keyDown, global.firstGamepad)
		selectLine -= scGetInputPressed(global.keyUp, global.firstGamepad)
		
		selectLine = clamp(selectLine, 0, array_length_1d(valuelist)-1)
		if (topLine > selectLine) topLine = selectLine
		if (topLine < selectLine-visibleLine+1) topLine = selectLine-visibleLine+1
		
		
		if (scGetInputPressed(global.keySelect, global.firstGamepad))
		{
			fout(selectLine)
			text = value
		}
	}
	else
	{
		
		var coll = false
		var line = min(visibleLine, array_length_1d(valuelist))
		for (var i = 0; i < line; i++)
		{
			if (mouse_x > x - sprite_width/2 && mouse_x < x + sprite_width/2)
			if (mouse_y > y + sprite_height/2+8+lineH*i && mouse_y < y + sprite_height/2+8+lineH*(i+1))
			{
				selectLine = topLine + i
				coll = true
			}
		}
		
		
		if (coll)
		{
			//selectLine += mouse_wheel_down()
			//selectLine -= mouse_wheel_up()
			topLine += mouse_wheel_down()
			topLine -= mouse_wheel_up()
			topLine = clamp(topLine, 0, array_length_1d(valuelist)-3)
		}
		else
		{
			selectLine += mouse_wheel_down()
			selectLine -= mouse_wheel_up()
			selectLine = clamp(selectLine, 0, array_length_1d(valuelist)-1)
			if (topLine > selectLine) topLine = selectLine
			if (topLine < selectLine-visibleLine+1) topLine = selectLine-visibleLine+1
		}
		
		if (mouse_check_button_pressed(mb_left) && isChange)
		{
			fout(selectLine)
			text = value
		}
	}
}












