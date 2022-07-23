/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if (GUI2DPos != noone)
{
	if (GUISelect = noone)
	{
		if (GUITarget != GUI2DPos[GUITarget_y, GUITarget_x])
		{
			for (var yy = 0; yy < array_length_1d(GUI2DPos); yy++)
				for (var xx = 0; xx < array_length_1d(GUI2DPos[0]); xx++)
					if (GUITarget = GUI2DPos[yy, xx])
					{
						GUITarget_y = yy
						GUITarget_x = xx
					}
		}

		var _x = 0
		var _y = 0
		if scGetInputPressed(global.keyLeft, global.firstGamepad) _x--
		else if scGetInputPressed(global.keyUp, global.firstGamepad) _y--
		else if scGetInputPressed(global.keyRight, global.firstGamepad) _x++
		else if scGetInputPressed(global.keyDown, global.firstGamepad) _y++
	
		if (_x != 0)
		{
			for (var i = 1; i <= array_length_1d(GUI2DPos[0]); i++)
			{
				var xx = clamp(GUITarget_x + _x*i, 0, array_length_1d(GUI2DPos[0])-1)
				if (GUITarget != GUI2DPos[GUITarget_y, xx])
				{
					GUITarget_x = xx;
					break;
				}
			}
		}
		else if (_y != 0)
		{
			for (var j = 1; j <= array_length_1d(GUI2DPos); j++)
			{
				var yy = clamp(GUITarget_y + _y*j, 0, array_length_1d(GUI2DPos)-1)
				if (GUITarget != GUI2DPos[yy, GUITarget_x])
				{
					GUITarget_y = yy;
					break;
				}
			}
		}
	
		GUITarget_y = clamp(GUITarget_y, 0, array_length_1d(GUI2DPos)-1)
		GUITarget_x = clamp(GUITarget_x, 0, array_length_1d(GUI2DPos[0])-1)
		GUITarget = GUI2DPos[GUITarget_y, GUITarget_x]
	}
	

	if (GUISelect = noone)
		if (scGetInputPressed(global.keyClose, global.firstGamepad))
			GUIPop()
}


if (GUIBefore != noone)
{
	image_index = 0

	if (oInputControl.mode != InputMode.mouse)
	{
		if (GUIBefore.GUITarget != noone)
			if (GUIBefore.GUITarget = id)
			{
				image_index = 1
				if scGetInput(global.keySelect, global.firstGamepad)
					image_index = 2
			}

		if (GUIBefore.GUISelect != noone)
			if (GUIBefore.GUISelect = id)
				image_index = 3
	}
	else
	{
		
		if (collision_point(mouse_x, mouse_y, self, 0, 0))
			if (GUIBefore.GUITarget != noone)
				if (GUIBefore.GUITarget = id)
				{
					image_index = 1
					if mouse_check_button(mb_left)
						image_index = 2
				}

		if (GUIBefore.GUISelect != noone)
			if (GUIBefore.GUISelect = id)
				image_index = 3
	}
	
}

if (lang != global.lang)
{
	lang = global.lang
	if (baseText != "")
	{
		text = global.langText[global.lang][? baseText]
	}
}