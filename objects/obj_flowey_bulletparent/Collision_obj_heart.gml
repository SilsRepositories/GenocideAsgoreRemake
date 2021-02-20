if (global.invc == 0)
{
	if (image_blend == $FFA914 && obj_heart.ismoving)
	{
		global.invc = 30 * (room_speed / 30)
		global.hp -= 5
		audio_play_sound(snd_hurt, 20, 0)
	}
	if (image_blend == c_orange && !obj_heart.ismoving)
	{
		global.invc = 30 * (room_speed / 30)
		global.hp -= 5
		audio_play_sound(snd_hurt, 20, 0)
	}
	if (image_blend = c_white)
	{
		global.invc = 30 * (room_speed / 30)
		global.hp -= 5
		audio_play_sound(snd_hurt, 20, 0)
	}
	obj_heart.expect = global.hp * 27364
}
audio_sound_gain(snd_hurt, global.SOUND_VOLUME, 0)