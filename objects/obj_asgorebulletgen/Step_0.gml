// Bullet Rain 1
if (wave == 0)
{
	origin1x += 4 * (30 / room_speed)
	origin2x -= 4 * (30 / room_speed)
	if (alarm[1] < 1)
		alarm[1] = 12 * (room_speed / 30)
}
// Bullet Rain 2
if (wave == 1)
{
	origin1x += 4 * (30 / room_speed)
	origin2x -= 4 * (30 / room_speed)
	if (alarm[1] < 1)
		alarm[1] = 24 * (room_speed / 30)
}
// Big Bullet Rain
if (wave == 9)
{
	origin1x += 4 * (30 / room_speed)
	origin2x -= 4 * (30 / room_speed)
	if (alarm[1] < 1)
		alarm[1] = 9 * (room_speed / 30)
}
depth = -100