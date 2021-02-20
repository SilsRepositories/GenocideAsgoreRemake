if (hspeed == 8 || (hspeed == 4 && global.fpsmode))
{
	alarm[1] = 1 * (room_speed / 30)
	hspeed = 0
	global.candodge = false
	exit
}
hspeed += 8 * (30 / room_speed)
if (hspeed <= 8 || (hspeed <= 4 && global.fpsmode))
{
	alarm[4] = 20 * (room_speed / 30)
	dmg = instance_create_depth(x + 100, y + 100, -100000, obj_damagewriter)
	dmg.damage = 0
	dmg.alarm[0] = 50 * (room_speed / 30)
}