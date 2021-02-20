side = 0
if (global.lunaticmode == 0)
{
	if (obj_heart.x > 285)
		side = 1
	if (obj_heart.x > 345)
		side = 2
}
else
{
	if (obj_heart.x > 320)
		side = 1
}
if (totalwarnings >= 8)
{
	alarm[0] = 1 * (room_speed / 30)
	exit
}
totalwarnings += 1
if (global.lunaticmode == 0)
	instance_create_depth(215 + (70 * side), 384 - global.borderheight, -1000, obj_warning)
else
{
	spawnx = obj_heart.x - (global.borderwidth / 4)
	if (spawnx < 215)
		spawnx = 215
	if (spawnx > 320)
		spawnx = 320
	instance_create_depth(spawnx, 384 - global.borderheight, -1000, obj_warning)
}
alarm[3] = 30 * (room_speed / 30)