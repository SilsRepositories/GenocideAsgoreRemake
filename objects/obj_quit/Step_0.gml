if (keyboard_check(vk_escape))
{
	sprite_index = spr_quitting
	image_alpha += (0.03 * (30 / room_speed)) * (30 / room_speed)
	image_index = 0
	if (image_alpha > 0.33)
		image_index = 1
	if (image_alpha > 0.66)
		image_index = 2
	if (image_alpha >= 1)
		game_end()
}
else if (keyboard_check(ord("R")) && room == room_asgorefight)
{
	sprite_index = spr_restarting
	image_alpha += (0.03 * (30 / room_speed)) * (30 / room_speed)
	image_index = 0
	if (image_alpha > 0.33)
		image_index = 1
	if (image_alpha > 0.66)
		image_index = 2
	if (image_alpha >= 1)
	{
		audio_stop_all()
		global.hp = 0
		room_goto(room_asgoreintro)
	}
}
else
	image_alpha = 0