draw_set_font(fnt_determination)
if (image_xscale == 0.5)
	draw_set_font(fnt_dotum)
if (global.cheatingpieceofshitgofuckyourself)
	draw_set_font(fnt_sans)
draw_set_color(color)
if (room_speed == 60)
{
	if (framenum == 1)
		framenum = 0
	else
		framenum = 1
}
if (framenum == 0)
{
	while 1
	{
		if (writing)
		{
			audio_stop_sound(snd_text1)
			audio_stop_sound(snd_txtasgore)
			audio_stop_sound(snd_txtsans)
			audio_sound_gain(snd_text1, global.SOUND_VOLUME, 0)
			audio_sound_gain(snd_txtasgore, global.SOUND_VOLUME, 0)
			audio_sound_gain(snd_txtsans, global.SOUND_VOLUME, 0)
			if (string_char_at(text, char) != " ")
			{
				if (image_xscale != 0.5 && !global.cheatingpieceofshitgofuckyourself)
					audio_play_sound(snd_text1, 20, 0)
				else if (!global.cheatingpieceofshitgofuckyourself)
					audio_play_sound(snd_txtasgore, 20, 0)
				else
					audio_play_sound(snd_txtsans, 20, 0)
			}
			if (string_char_at(text, char) == "/") {
				writing = false
				if (string_char_at(text, char + 1) == "%" && string_char_at(text, char + 2) == "%")
				{
					doesdespawn = true
					break
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
				break
			}
			if (string_char_at(text, char) == "&") {
				str = str + "\n"
				char++
				draw_text(x, y, str)
				continue
			}
			str = str + string_char_at(text, char)
			char++
		}
		if (!insta)
			break
	}
	insta = false
}
if ((keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)) && !writing && canskip)
{
	if (doesdespawn)
	{
		instance_destroy()
		if (global.menu == 100)
			obj_asgore.alarm[1] = 1
	}
	else {
		str = ""
		char = 1
		addon += 1
		text = ds_map_find_value(global.text_data, key + "-" + string(addon))
		if (text == "!&Stay determined.../%%")
			text = string(global.name) + "!&Stay determined.../%%"
		writing = true
		exit
	}
}
if ((keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_rshift)) && canskip && writing)
{
	insta = true
}
draw_text(x, y, str)