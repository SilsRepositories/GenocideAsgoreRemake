if (con == 1 && !instance_exists(obj_writer))
{
	con = 2
	alarm[1] = 60 * (room_speed / 30)
	audio_sound_gain(mus_f_wind, 0, 4000)
}
if (con == 3)
{
	if (go == 1)
	{
		room_goto(room_menu)
		exit
	}
	audio_play_sound(mus_vsasgore, 20, false)
	audio_sound_pitch(mus_vsasgore, 0.9)
	audio_sound_gain(mus_vsasgore, global.MUSIC_VOLUME, 0)
	con = 4
	alarm[1] = 17 * (room_speed / 30)
}
if (con == 5)
{
	if (!audio_is_playing(mus_vsasgore))
		room_goto(room_menu)
	if (keyboard_check_pressed(vk_anykey))
	{
		audio_stop_sound(mus_vsasgore)
		room_goto(room_menu)
	}
}