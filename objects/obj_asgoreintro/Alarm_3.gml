con += 1
if (con == 13 || con == 15)
{
	audio_play_sound(mus_sfx_swipe, 20, 0)
	audio_sound_gain(mus_sfx_swipe, global.SOUND_VOLUME, 0)
	shuddereffect = 4
}
if (con == 20)
{
	room_goto(room_asgorefight)	
}