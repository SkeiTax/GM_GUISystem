/// @description Insert description here
// You can write your code in this editor

if (outText != text)
{
	time = min(time + 1, endTime)
	for (;string_length(outText) < floor(time/60*text_speed) && outText != text;)
	{
		outText += string_char_at(text, string_length(outText)+1)
	}
}