x = global.px - 2
y = global.py
audio_stop_all()
audio_play_sound(snd_hurt, 20, 0)
audio_sound_gain(snd_hurt, global.SOUND_VOLUME, 0)
image_speed = 0
alarm[0] = 30 * (room_speed / 30)
global.deaths += 1
ini_open("undertale.ini")
ini_write_real("General", "B", global.deaths)
if (global.lv == -4)
	ini_write_real("General", "D", 1)
ini_close()
image_blend = c_red
if (global.glasssoul == 1)
	image_blend = c_aqua