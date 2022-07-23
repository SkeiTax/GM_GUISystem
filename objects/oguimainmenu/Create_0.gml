/// @description Insert description here
// You can write your code in this editor
event_inherited()
//var xx = room_width/2
//var yy = room_height/2

var bw = 110
var bh = 38
// layer 1
GUIPtr[0] = instance_create_layer( 0, -120, "GUI", oButton, 
	{
		//text : global.langText[global.lang][? "Continue"],
		baseText : "Continue",
		MBLeftPressed : function() {GUIPop() game_restart()},
		width : bw,
		height : bh
	})

GUIPtr[1] = instance_create_layer( 0, -60, "GUI", oButton, 
	{
		text : global.langText[global.lang][? "New game"],
		baseText : "New game",
		MBLeftPressed : function() {GUIPop() game_restart()},
		width : bw,
		height : bh
	})

GUIPtr[2] = instance_create_layer( 0, 0, "GUI", oButton, 
	{
		text : global.langText[global.lang][? "Load"],
		baseText : "Load",
		MBLeftPressed : function() {GUIPop() game_restart()},
		width : bw,
		height : bh
	})

GUIPtr[3] = instance_create_layer( 0, 60, "GUI", oButton, 
	{
		text : global.langText[global.lang][? "Options"],
		baseText : "Options",
		MBLeftPressed : function() {GUIPush(oGUIMainOptions)},
		width : bw,
		height : bh
	})



GUIPtr[4] = instance_create_layer( 0, 120, "GUI", oButton, 
	{
		text : global.langText[global.lang][? "Exit"],
		baseText : "Exit",
		MBLeftPressed : function() {GUIPop() game_end()},
		width : bw,
		height : bh
	})


GUIPtr[0].GUIBefore = id
GUIPtr[1].GUIBefore = id
GUIPtr[2].GUIBefore = id
GUIPtr[3].GUIBefore = id
GUIPtr[4].GUIBefore = id

GUI2DPos = [[GUIPtr[0]],
			[GUIPtr[1]],
			[GUIPtr[2]],
			[GUIPtr[3]],
			[GUIPtr[4]]]

GUITarget = GUI2DPos[GUITarget_y, GUITarget_x]