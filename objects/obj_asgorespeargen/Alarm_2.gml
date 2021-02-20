spearcon += 1
audio_sound_gain(mus_sfx_cinematiccut, global.SOUND_VOLUME, 0)
if (spearcon == 3) {
	audio_play_sound(mus_sfx_cinematiccut, 20, 0)	
}
if (spearcon == 4 && global.invc <= 0) {
	if (color == c_orange) {
		if (!obj_heart.ismoving) {
			global.invc = 30 * (room_speed / 30)
			global.hp -= 10
			global.nhc = 0
			if (global.asgorepissed == 1)
				global.hp -= 5
		}
	}
	else if (obj_heart.ismoving) {
		global.invc = 30 * (room_speed / 30)
		global.hp -= 10
		global.nhc = 0
		if (global.asgorepissed == 1)
			global.hp -= 5
	}
}
if (spearcon == 8) {
	if (spearpreviews >= spearmax - 1) {
		con = 7	
		alarm[3] = 40 * (room_speed / 30)
		exit
	}
	spearpreviews += 1
	if (spears[spearpreviews] == 0)
		color = $FFA914
	else
		color = c_orange
	if (!turnback) {
		turnback = true
	}
	else {
		turnback = false	
	}
	spearcon = 0
}