if (global.invc == 0)
{
	global.invc = 3 * (room_speed / 30)
	if (obj_heart.y > 390)
		global.hp -= 2
	global.hp -= 3
	if (global.asgorepissed == 1)
		global.hp -= 1
	obj_heart.expect = global.hp * 27364
	audio_play_sound(snd_hurt, 20, 0)
	audio_sound_gain(snd_hurt, global.SOUND_VOLUME, 0)
}