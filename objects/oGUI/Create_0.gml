/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if (!autoSize)
{
	var sw = sprite_width
	var sh = sprite_height
	image_xscale = width/sw
	image_yscale = height/sh
}

enum anchorV
{
	top,
	middle,
	down
}
enum anchorH
{
	left,
	center,
	right
}

anchorX = 0
anchorY = 0

switch(anchorVertical)
{
	case anchorV.top:	 anchorY = 0 break
	case anchorV.middle: anchorY = room_height/2 break
	case anchorV.down:	 anchorY = room_height break
}

switch(anchorHorizontal)
{
	case anchorH.left:	 anchorX = 0 break
	case anchorH.center: anchorX = room_width/2 break
	case anchorH.right:	 anchorX = room_width break
}
startX = x
startY = y

x += anchorX
y += anchorY

if (baseText != "")
{
	text = global.langText[global.lang][? baseText]
}
lang = global.lang