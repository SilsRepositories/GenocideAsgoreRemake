image_speed = 1
alarm[0] = 24 * (room_speed / 30)
global.candodge = 0
if (global.classicmode && global.charadeath == 0)
	global.candodge = choose(0, 1, 2)
if (global.candodge != 1)
	obj_asgore.alarm[0] = 30 * (room_speed / 30)
else
	obj_asgore.hurtanim = 5
audio_play_sound(snd_slice, 20, 0)
audio_sound_gain(snd_slice, global.SOUND_VOLUME, 0)