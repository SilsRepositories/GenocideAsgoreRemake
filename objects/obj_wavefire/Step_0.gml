if (dir == -1)
{
	if (global.lunaticmode == 1)
		x += (sin(siner) * -8) * (30 / room_speed)
	else
		x += (sin(siner) * -4) * (30 / room_speed)
}
if (dir == 1)
{
	if (global.lunaticmode == 1)
		x += (sin(siner) * 8) * (30 / room_speed)
	else
		x += (sin(siner) * 4) * (30 / room_speed)
}
siner += 0.1 * (30 / room_speed)
vspeed = 5 * (30 / room_speed)