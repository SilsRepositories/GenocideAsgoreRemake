if (reverse == 0)
	image_alpha -= 0.02 * (30 / room_speed)
if (reverse == 1)
{
	image_alpha += 0.02 * (30 / room_speed)
	if (image_alpha >= 1)
		reverse = 0
}
if (image_alpha <= 0)
	instance_destroy()