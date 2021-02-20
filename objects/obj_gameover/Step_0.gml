if (con == 1)
{
	alarm[0] = 50 * (room_speed / 30)
	con = 2
	if (global.lv > -4 && !global.cheatingpieceofshitgofuckyourself)
	{
		audio_play_sound(mus_gameover, 20, true)
		audio_sound_pitch(mus_gameover, 0.925)
		audio_sound_gain(mus_gameover, global.MUSIC_VOLUME, 0)
	}
	else if (!global.cheatingpieceofshitgofuckyourself)
	{
		audio_play_sound(mus_yourbestfriend_3, 20, true)
		audio_sound_pitch(mus_yourbestfriend_3, 0.7)
		audio_sound_gain(mus_yourbestfriend_3, global.MUSIC_VOLUME, 0)
	}
	else
	{
		audio_play_sound(mus_dogsong, 20, true)
		audio_sound_pitch(mus_dogsong, 1.5)
		audio_sound_gain(mus_dogsong, global.MUSIC_VOLUME, 0)
	}
}
if (con == 2)
{
	image_alpha += (1 / 15) * (room_speed / 30)
}
if (global.lv == -4)
	image_alpha = 0
if (con == 3)
{
	writer = instance_create_depth(x + 50, 300, -10000, obj_writer)
	go = irandom_range(0, 4)
	if (global.lv > -4 && !global.cheatingpieceofshitgofuckyourself)
	{
		writer.text = ds_map_find_value(global.text_data, "KEY_GAMEOVER_" + string(go))
		writer.key = "KEY_GAMEOVER_" + string(go)
	}
	else if (!global.cheatingpieceofshitgofuckyourself)
	{
		writer.text = ds_map_find_value(global.text_data, "KEY_GAMEOVERSUICIDE_0")
		writer.key = "KEY_GAMEOVERSUICIDE_0"
	}
	else
	{
		writer.text = ds_map_find_value(global.text_data, "KEY_GAMEOVERCHEATED_0")
		writer.key = "KEY_GAMEOVERCHEATED_0"
	}
	con = 4
}
if (con == 4 && !instance_exists(obj_writer))
{
	if (global.lv == -4 || global.cheatingpieceofshitgofuckyourself)
		game_end()
	alarm[0] = 30 * (room_speed / 30)
	con = 5
}