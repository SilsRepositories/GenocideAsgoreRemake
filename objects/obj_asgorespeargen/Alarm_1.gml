if (spearpreviews < spearmax) {
	if (side == 0) {
		side = 1
		flash = instance_create_depth(290, 60, -1000000, obj_eyeflash)
	}
	else {
		side = 0
		flash = instance_create_depth(330, 60, -1000000, obj_eyeflash)
	}
	flash.image_xscale = 2
	flash.image_yscale = 2
	if (spears[spearpreviews] == 0) {
		flash.image_blend = $FFA914
	}
	else {
		flash.image_blend = c_orange
	}
	spearpreviews += 1
	if (spearpreviews < spearmax) {
		eye = audio_play_sound(mus_sfx_eyeflash, 20, 0)
		audio_sound_pitch(eye, 1)
	}
	else {
		eye = audio_play_sound(mus_sfx_eyeflash, 20, 0)
		audio_sound_pitch(eye, 0.8)
	}
}
audio_sound_gain(mus_sfx_eyeflash, global.SOUND_VOLUME, 0)