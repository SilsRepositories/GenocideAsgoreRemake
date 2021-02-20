if (badintro)
	room_goto(room_credits)
if (!instance_exists(obj_writer) && canwrite)
{
	writer = instance_create_depth(x + 150, 320, -10000, obj_writer)
	writer.text = ds_map_find_value(global.text_data, "KEY_INTRO_" + string(intromenuslide))
	writer.canskip = false
	intromenuslide += 1
	canwrite = false
	alarm[0] = 90
	if (image_index == 8)
		alarm[0] = 50
}
if (fadeout == 1)
{
	image_alpha -= 0.1
	if (image_alpha <= 0)
	{
		instance_destroy(writer)
		fadeout = 2
		image_index += 1
	}
}
if (image_index > 2)
{
	audio_sound_pitch(mus_story, pitch)
	pitch -= 0.002
	if (pitch <= 0)
		audio_stop_sound(mus_story)
}
if (fadeout == 2)
{
	canwrite = true
	image_alpha += 0.1
	if (image_alpha >= 1)
		fadeout = 0
}
audio_sound_gain(mus_f_wind, global.MUSIC_VOLUME, 0)
audio_sound_gain(mus_story, global.MUSIC_VOLUME, 0)
if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
{
	audio_stop_sound(mus_story)
	audio_stop_sound(mus_f_wind)
	room_goto(room_menu)
	room_speed = 30
	exit
}
room_speed = 15
if (image_index == 8)
	room_speed = 8