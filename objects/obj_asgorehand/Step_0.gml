image_alpha += 0.3 * (30 / room_speed)
siner += 0.15 * (speed / 16.3) * (30 / room_speed)
if (direction == 0)
	y = (basey + abs(sin(siner)) * 19)
if (direction == 180)
	y = (basey - abs(sin(siner)) * 19)
if (alarm[1] <= 0 && !has)
{
	if (speed == 16.3 * (30 / room_speed))
		alarm[1] = 17 * (room_speed / 30)
	else
		alarm[1] = 70 * (room_speed / 30)
	has = true
}