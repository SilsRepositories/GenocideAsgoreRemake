audio_sound_gain(mus_f_wind, global.SOUND_VOLUME, 0)
audio_play_sound(mus_f_wind, 20, true)
go = 0
if (global.wasanidiot == 1)
{
	go = 1
	ini_open("undertale.ini")
	gj = ini_read_real("General", "E", 0)
	if (gj > 2)
		gj = 2
	ini_write_real("General", "E", (gj + 1))
}
global.wasanidiot = 0
room_speed = 15
alarm[0] = 20 * (room_speed / 30)
con = 0
credity = 480