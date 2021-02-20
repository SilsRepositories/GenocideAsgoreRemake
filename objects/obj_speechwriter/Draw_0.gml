draw_set_font(fnt_dotum)
draw_set_color(color)
if (global.fpsmode == 1)
{
	if (framenum == 1)
		framenum = 0
	else
		framenum = 1
}
if (framenum == 0)
{
	if (writing)
	{
		audio_sound_gain(snd_text1, global.SOUND_VOLUME, 0)
		audio_sound_gain(snd_txtasgore, global.SOUND_VOLUME, 0)
		audio_stop_sound(snd_txtasgore)
		if (string_char_at(text, char) != " ")
			audio_play_sound(snd_txtasgore, 20, 0)
		if (string_char_at(text, char) == "/") {
			writing = false
			if (string_char_at(text, char + 1) == "%" && string_char_at(text, char + 2) == "%")
			{
				doesdespawn = true
				show_debug_message("YES")
			}
			if (string_char_at(text, char + 1) == "R")
			{
				writing = true
				color = c_red
				char += 2
			}
			if (string_char_at(text, char + 1) == "W")
			{
				writing = true
				char += 2
			}
			draw_text(x, y, str)
			exit
		}
		if (string_char_at(text, char) == "&") {
			str = str + "\n"
			char++
			draw_text(x, y, str)
			exit
		}
		str = str + string_char_at(text, char)
		char++
	}
}
if (keyboard_check_pressed(ord("Z")) && !writing)
{
	if (doesdespawn)
	{
		instance_destroy()
	}
	else {
		str = ""
		char = 1
		addon += 1
		text = ds_map_find_value(global.text_data, key + "-" + string(addon))
		writing = true
		exit
	}
}
draw_text(x, y, str)