if (keyboard_check_pressed(vk_f4))
{
	if (window_get_fullscreen() == false)
		window_set_fullscreen(true)	
	else
		window_set_fullscreen(false)	
}
if (global.fpsmode == 1 && room_speed == 30)
	room_speed = 60
if (global.fpsmode == 0 && room_speed == 60)
	room_speed = 30
audio_master_gain(global.MASTER_VOLUME)