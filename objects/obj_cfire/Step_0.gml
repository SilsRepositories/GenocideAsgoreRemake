r -= rspeed
ang += angspeed
if (r <= 0.5)
{
	if (isfirst && global.lunaticmode == 1)
	{
		i = 0
		repeat (8)
		{
			shootfire = instance_create_depth(320, 294, -10000, obj_fire)
			shootfire.direction = (360 / 8) * i
			shootfire.speed = 8 * (30 / room_speed)
			i += 1
		}
	}
    instance_destroy()
}
x = (320 + lengthdir_x(r, ang))
y = (294 + lengthdir_y(r, ang))