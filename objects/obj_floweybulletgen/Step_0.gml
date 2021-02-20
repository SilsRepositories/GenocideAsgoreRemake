if (global.fpsmode == 1)
{
	if (framenum == 1)
		framenum = 0
	else
		framenum = 1
}
audio_sound_gain(pellet19, global.SOUND_VOLUME, 0)
audio_sound_gain(snd_floweylaugh, global.SOUND_VOLUME, 0)
if (wave == 0)
{
	if (con == 0)
	{
		if (framenum == 1)
			exit
		audio_stop_sound(pellet19)
		fpellet = instance_create_depth(0, 0, -1000, obj_floweypellet)
		fpellet2 = instance_create_depth(0, 0, -1000, obj_floweypellet)
		global.pelletcount += 1
		with (fpellet)
		{
			direction = (3.141 * 2) * global.pelletcount
			distance = 100
			type = 2
			if (global.pelletcount <= 45)
				type = 1
			if (global.pelletcount <= 30)
				type = 2
			if (global.pelletcount <= 15)
				type = 1
			if (global.classicmode)
				type = irandom_range(0, 2)
		}
		global.pelletcount += 1
		with (fpellet2)
		{
			direction = (3.141 * 2) * global.pelletcount
			distance = 100
			type = 2
			if (global.pelletcount <= 45)
				type = 1
			if (global.pelletcount <= 30)
				type = 2
			if (global.pelletcount <= 15)
				type = 1
			if (global.classicmode)
				type = irandom_range(0, 2)
		}
		audio_play_sound(pellet19, 20, 0)
		if (alarm[0] <= 0)
			alarm[0] = 29 * (room_speed / 30)
	}
	if (con == 1)
	{
		if (friktion == 0)
			friktion = 0.8
		if (global.fpsmode == 0)
			friktion *= 1.1
		else
			friktion *= 1.05
		with (obj_floweypellet)
		{
			distance -= obj_floweybulletgen.friktion
		}
	}
}
if (wave == 1)
{
	if (con == 0)
	{
		audio_stop_sound(snd_floweylaugh)
		alarm[0] = 39 * (room_speed / 30)
		alarm[1] = 1 * (room_speed / 30)
		con = 1
	}
	if (con == 2)
	{
		if (friktion == 0)
			friktion = 0.8
		if (global.fpsmode == 0)
			friktion *= 1.1
		else
			friktion *= 1.05
	}
	if (con == 3)
	{
		if (friktion2 == 0)
			friktion2 = 0.8
		if (global.fpsmode == 0)
			friktion2 *= 1.1
		else
			friktion2 *= 1.05
	}
	if (con > 1)
	{
		with (pellets[1])
			distance -= obj_floweybulletgen.friktion
		with (pellets[3])
			distance -= obj_floweybulletgen.friktion
		with (pellets[5])
			distance -= obj_floweybulletgen.friktion
		with (pellets[7])
			distance -= obj_floweybulletgen.friktion
		with (pellets[9])
			distance -= obj_floweybulletgen.friktion
		with (pellets[11])
			distance -= obj_floweybulletgen.friktion
	}
	if (con > 2)
	{
		with (pellets[0])
			distance -= obj_floweybulletgen.friktion2
		with (pellets[2])
			distance -= obj_floweybulletgen.friktion2
		with (pellets[4])
			distance -= obj_floweybulletgen.friktion2
		with (pellets[6])
			distance -= obj_floweybulletgen.friktion2
		with (pellets[8])
			distance -= obj_floweybulletgen.friktion2
		with (pellets[10])
			distance -= obj_floweybulletgen.friktion2
	}
}
if (wave == 2)
{
	if (con == 0)
	{
		audio_stop_sound(snd_floweylaugh)
		for (var i = 0; i < 6; i++)
		{
			flpellet = instance_create_depth(0, 0, -1000, obj_floweypellet)
			pellets[global.pelletcount] = flpellet
			with (flpellet)
			{
				circlespin = true
				direction = 60 * (global.pelletcount + 1)
				distance = 303
				type = 3
			}
			global.pelletcount += 1
		}
		con = 1	
	}
}
if (wave == 3)
{
	if (con == 0)
	{
		if (framenum == 1)
			exit
		audio_stop_sound(pellet19)
		fpellet = instance_create_depth(0, 0, -1000, obj_floweypellet)
		fpellet2 = instance_create_depth(0, 0, -1000, obj_floweypellet)
		global.pelletcount += 1
		with (fpellet)
		{
			direction = (3.141 * 2) * global.pelletcount
			distance = 100
			type = 2
		}
		global.pelletcount += 1
		with (fpellet2)
		{
			direction = (3.141 * 2) * global.pelletcount
			distance = 100
			type = 2
		}
		audio_play_sound(pellet19, 20, 0)
		if (alarm[0] <= 0)
			alarm[0] = 29 * (room_speed / 30)
	}
	if (con == 1)
	{
		if (friktion == 0)
			friktion = 0.8
		if (global.fpsmode == 0)
			friktion *= 1.1
		else
			friktion *= 1.05
		with (obj_floweypellet)
		{
			distance -= obj_floweybulletgen.friktion
		}
	}
}