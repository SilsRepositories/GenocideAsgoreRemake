image_speed = vspeed
if (vspeed == 0)
	image_index = 0
if (con == 0)
	vspeed = -1 * (30 / room_speed)
if (con == 1)
{
	vspeed = 0
	con = 2
	alarm[0] = 30 * (room_speed / 30)
}
if (con == 3)
{
	vspeed = -0.7 * (30 / room_speed)
	alarm[0] = 90 * (room_speed / 30)
	con = 4
}
if (con == 4)
{
	obj_camera.y -= 4 * (30 / room_speed)
}
if (con == 5)
{
	vspeed = 0
	image_index = 0
	alarm[0] = 60 * (room_speed / 30)
	con = 6
}
if (con == 7)
{
	dialoguer = instance_create_depth(0, 0, -3000, obj_dialogue)
	dialoguer.key = "KEY_ASGORE_TALK_0"
	con = 8
}
if (con == 8 && !instance_exists(dialoguer))
{
	alarm[0] = 120 * (room_speed / 30)
	vspeed = -1 * (30 / room_speed)
	con = 9
}
if (con == 10)
{
	image_index = 0
	vspeed = 0
	alarm[0] = 30 * (room_speed / 30)
	con = 11
}
if (con == 11)
{
	image_index = 0
}
if (con == 12)
{
	obj_asgore_overworld.image_index = 1
	alarm[0] = 20 * (room_speed / 30)
	con = 13
}
if (con == 14)
{
	obj_asgore_overworld.image_index = 2
	alarm[0] = 40 * (room_speed / 30)
	con = 15
}
if (con == 16)
{
	obj_asgore_overworld.image_index = 3
	alarm[0] = 80 * (room_speed / 30)
	con = 17
}
if (con == 18)
{
	alarm[0] = 80 * (room_speed / 30)
	dialoguer = instance_create_depth(0, 0, -3000, obj_dialogue)
	dialoguer.key = "KEY_ASGORE_TALK_1"
	con = 19
}
if (con == 20 && !instance_exists(dialoguer))
{
	vspeed = -0.3
	alarm[0] = 30 * (room_speed / 30)
	con = 21
}
if (con == 22)
{
	vspeed = 0
	obj_asgore_overworld.image_index = 1
	alarm[0] = 30 * (room_speed / 30)
	image_index = 0
	con = 23
}
if (con == 24)
{
	alarm[0] = 80 * (room_speed / 30)
	dialoguer = instance_create_depth(0, 0, -3000, obj_dialogue)
	dialoguer.key = "KEY_ASGORE_TALK_2"
	con = 25
}
if (con == 26 && !instance_exists(dialoguer))
{
	audio_stop_sound(mus_birdnoise)
	audio_play_sound(snd_test, 20, 0)
	audio_play_sound(mus_sfx_yowl, 20, 0)
	audio_sound_gain(snd_test, global.SOUND_VOLUME, 0)
	audio_sound_gain(mus_sfx_yowl, global.SOUND_VOLUME, 0)
	alarm[0] = 40 * (room_speed / 30)
	con = 27
	with (all)
	{
		image_alpha = 0	
	}
}
if (con == 28)
{
	dialoguer = instance_create_depth(0, 0, -3000, obj_dialogue)
	dialoguer.key = "KEY_ASGORE_TALK_3"
	con = 29
}
if (con == 29 && !instance_exists(dialoguer))
{
	room_goto(room_asgoreintro)
	con = 30
}
if (global.hp == 0)
{
	instance_destroy(obj_dialogue)
	instance_destroy(obj_writer)
}
if (keyboard_check_pressed(ord("C")) || keyboard_check_pressed(vk_rcontrol))
{
	audio_stop_sound(mus_birdnoise)
	room_goto(room_asgoreintro)
}