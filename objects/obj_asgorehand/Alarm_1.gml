for (var i = 0; i < firespawned; i++)
{
	if (speed == 16.3 * (30 / room_speed))
	{
		with (fires[i])
		{
			move_towards_point(obj_heart.x + 8, obj_heart.y + 8, 10 * (30 / room_speed))	
		}
	}
	else
	{
		with (fires[i])
		{
			move_towards_point(obj_heart.x + 8, obj_heart.y + 8, 1 * (30 / room_speed))	
			if (global.fpsmode)
				friction = -0.05
			else
				friction = -0.2
		}
	}
}
alarm[0] = -1