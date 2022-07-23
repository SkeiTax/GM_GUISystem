/// @description Insert description here
// You can write your code in this editor
event_inherited()
//var xx = room_width/2
//var yy = room_height/2

var bw = 90
var bh = 38

// layer 1
GUIPtr[0] = instance_create_layer( 0, -180, "GUI", oDropDown,
	{
		text : global.langText[global.lang][? "Language"],
		baseText : "Language",
		width : 200,
		height : 38,
		valuelist : [
			global.langText[global.lang][? "English"], 
			global.langText[global.lang][? "Russian"], 
			global.langText[global.lang][? "Spanish"]
		],
		fout : function(val) {
			value = valuelist[val]
			switch (val)
			{
				case Languages.English : global.lang = Languages.English break
				case Languages.Russian : global.lang = Languages.Russian break
				case Languages.Spanish : global.lang = Languages.Spanish break
			}
		}
	})

// layer 2
GUIPtr[1] = instance_create_layer( 0, -120, "GUI", oSlider, 
	{
		text : global.langText[global.lang][? "Total value"],
		baseText : "Total value",
		width : 200,
		height : bh,
		value : 3,
		value_min : 0,
		value_max : 10
	})

// layer 3
GUIPtr[2] = instance_create_layer( 0, -60, "GUI", oSlider, 
	{
		text : global.langText[global.lang][? "SFX value"],
		baseText : "SFX value",
		width : 200,
		height : bh,
		value : 3,
		value_min : 0,
		value_max : 10
	})

// layer 4
GUIPtr[3] = instance_create_layer( 0, 0, "GUI", oDropDown,
	{
		text : global.langText[global.lang][? "Resolution"],
		baseText : "Resolution",
		width : 200,
		height : 38,
		valuelist : [
			"960 x 540", 
			"1366 x 768", 
			"1920 x 1080", 
			"2560 x 1440"
		],
		fout : function(val) {
			value = valuelist[val]
			var W = 960, H = 540
			switch (val)
			{
				case 0 : W = 960 H = 540 break
				case 1 : W = 1366 H = 768 break
				case 2 : W = 1920 H = 1080 break
				case 3 : W = 2560 H = 1440 break
			}
			window_set_size(W, H) 
			//display_set_gui_size(W, H)
			//view_set_wport(0, W)
			//view_set_hport(0, H)
		}
	})

// layer 5
GUIPtr[4] = instance_create_layer( 0, +60, "GUI", oDropDown,
	{
		text : global.langText[global.lang][? "Graphics quality"],
		baseText : "Graphics quality",
		width : 200,
		height : 38,
		valuelist : [
			global.langText[global.lang][? "Low"], 
			global.langText[global.lang][? "Medium"], 
			global.langText[global.lang][? "High"]
		],
		fout : function(val) {
			value = valuelist[val]
		}
	})

// layer 6
GUIPtr[5] = instance_create_layer( 0, +120, "GUI", oDropDown,
	{
		text : global.langText[global.lang][? "Difficulty"],
		baseText : "Difficulty",
		width : 200,
		height : 38,
		valuelist : [
			global.langText[global.lang][? "Easy"], 
			global.langText[global.lang][? "Normal"], 
			global.langText[global.lang][? "Hard"]
		],
		fout : function(val) {
			value = valuelist[val]
		}
	})

// layer 7
GUIPtr[6] = instance_create_layer( -55, +180, "GUI", oButton, 
	{
		text : global.langText[global.lang][? "Save"],
		baseText : "Save",
		MBLeftPressed : function() {GUIPop()},
		width : bw,
		height : bh
	})

GUIPtr[7] = instance_create_layer( +55, +180, "GUI", oButton, 
	{
		text : global.langText[global.lang][? "Back"],
		baseText : "Back",
		MBLeftPressed : function() {GUIPop()},
		width : bw,
		height : bh
	})




GUIPtr[0].GUIBefore = id
GUIPtr[1].GUIBefore = id
GUIPtr[2].GUIBefore = id
GUIPtr[3].GUIBefore = id
GUIPtr[4].GUIBefore = id
GUIPtr[5].GUIBefore = id
GUIPtr[6].GUIBefore = id
GUIPtr[7].GUIBefore = id

GUI2DPos = [[GUIPtr[0], GUIPtr[0]],
			[GUIPtr[1], GUIPtr[1]],
			[GUIPtr[2], GUIPtr[2]],
			[GUIPtr[3], GUIPtr[3]],
			[GUIPtr[4], GUIPtr[4]],
			[GUIPtr[5], GUIPtr[5]],
			[GUIPtr[6], GUIPtr[7]]]

GUITarget = GUI2DPos[GUITarget_y, GUITarget_x]



