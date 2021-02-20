audio_play_sound(snd_mtt_prebomb, 20, 0)
audio_sound_gain(snd_mtt_prebomb, global.SOUND_VOLUME, 0)
alarm[0] = 2 * (room_speed / 30)
if (color == c_red)
	color = c_yellow
else
	color = c_red
framenum = 0