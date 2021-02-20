audio_sound_gain(snd_atklun, global.SOUND_VOLUME, 0)
if (wave == 0)
{
	flamespeed = 6 * (30 / room_speed)
	flamescale = 2
	flamecount = 20
	if (global.lunaticmode == 1)
	{
		flamespeed = 6 * (30 / room_speed)
		flamescale = 1.7
		flamecount = 30
	}
	for (var i = 0; i < flamecount; i++)
	{
		fire = instance_create_depth(origin1x, 0, -101, obj_fire)
		fire.direction = (360 / flamecount) * i
		fire.speed = flamespeed
		fire.image_xscale = flamescale
		fire.image_yscale = flamescale
	}
	for (var i = 0; i < flamecount; i++)
	{
		fire = instance_create_depth(origin2x, 0, -101, obj_fire)
		fire.direction = (360 / flamecount) * i
		fire.speed = flamespeed
		fire.image_xscale = flamescale
		fire.image_yscale = flamescale
	}
	bulletwaves += 1
	alarm[1] = 12 * (room_speed / 30)
	if (global.lunaticmode == 1)
		alarm[1] = 9 * (room_speed / 30)
}
if (wave == 1)
{
	flamespeed = 6 * (30 / room_speed)
	flamecount = 25
	if (global.lunaticmode == 1)
	{
		flamespeed = 8 * (30 / room_speed)
		flamecount = 20
	}
	for (var i = 0; i < flamecount; i++)
	{
		fire = instance_create_depth(origin1x, 0, -101, obj_fire)
		fire.direction = (360 / flamecount) * i
		fire.speed = flamespeed
	}
	for (var i = 0; i < flamecount; i++)
	{
		fire = instance_create_depth(origin2x, 0, -101, obj_fire)
		fire.direction = (360 / flamecount) * i
		fire.speed = flamespeed
	}	
	for (var i = 0; i < flamecount; i++)
	{
		fire = instance_create_depth(origin1x, 480, -101, obj_fire)
		fire.direction = (360 / flamecount) * i
		fire.speed = flamespeed
	}
	for (var i = 0; i < flamecount; i++)
	{
		fire = instance_create_depth(origin2x, 480, -101, obj_fire)
		fire.direction = (360 / flamecount) * i
		fire.speed = flamespeed
	}
	bulletwaves += 1
	alarm[1] = 24 * (room_speed / 30)
	if (global.lunaticmode == 1)
	{
		audio_play_sound(snd_atklun, 20, false)
		alarm[1] = 12 * (room_speed / 30)
	}
}
if (wave == 3)
{
	originx = 120
	originy = 190
	odirection = 0
	osprite = spr_handbullet_old_u_0
	a_hand = instance_create_depth(originx, originy, -101, obj_asgorehand)
	a_hand.alarm[0] = 4 * (room_speed / 30)
	a_hand.direction = odirection
	a_hand.speed = 5.9 * (30 / room_speed)
	a_hand.sprite_index = osprite
	a_hand.friction = 0
	a_hand.interval = 5 * (room_speed / 30)
	originx = 404
	originy = 324
	odirection = 180
	osprite = spr_handbullet_old_d_0
	a_hand = instance_create_depth(originx, originy, -101, obj_asgorehand)
	a_hand.alarm[0] = 4 * (room_speed / 30)
	a_hand.direction = odirection
	a_hand.speed = 5.9 * (30 / room_speed)
	a_hand.sprite_index = osprite
	a_hand.friction = 0
	a_hand.interval = 5 * (room_speed / 30)
}
if (wave == 4)
{
	gil = global.borderc_l / 3 + 200
	gir = global.borderc_r / 3 + 200
	if (global.survival)
	{
		gil = global.borderc_l / 3 + 150
		gir = global.borderc_r / 3 + 300
	}
	giw = (gir - gil)
	giu = global.borderc_u
	i = 0
	maxhelix = 2
	if (global.lunaticmode == 1)
		maxhelix = 4
	repeat (maxhelix)
	{
	    j = 0
	    repeat (4)
	    {
	        gg = instance_create_depth(((((gil + (j * (giw / 4))) + 20) - random(10)) + (10 * j)), (((giu - 80) - (340 * i)) - random(90)), -101, obj_helixfire)
	        gg.mysf = 5.5
	        gg.mysv = 3.5
	        gg.mys = random(2)
	        gg.vspeed = ((0 + random(2)) - random(2)) * (30 / room_speed)
			if (global.lunaticmode == 1)
				gg.vspeed += random(1) * (30 / room_speed)
	        j += 1
	    }
	    i += 1
	}
}
if (wave == 5)
{
	if (alarm[2] <= 0)
	{
		alarm[2] = 4 * (room_speed / 30)
	}
	alarm[1] = 1 * (room_speed / 30)
	siner += 0.06 * (30 / room_speed)
}
if (wave == 6)
{
	if (global.lunaticmode == 0)
	{
		alarm[1] = 17 * (room_speed / 30)
		dir = choose(1, 2, 3, 4)
		originx = 0
		originy = 0
		odirection = 0
		osprite = spr_handbullet_old_d_0
		if (dir == 1)
		{
			originx = 130
			originy = 160
			odirection = 0
			osprite = spr_handbullet_old_u_0
		}
		if (dir == 2)
		{
			originx = 394
			originy = 120
			odirection = 270
			osprite = spr_handbullet_old_r_0
		}
		if (dir == 3)
		{
			originx = 414
			originy = 354
			odirection = 180
			osprite = spr_handbullet_old_d_0
		}
		if (dir == 4)
		{
			originx = 190
			originy = 374
			odirection = 90
			osprite = spr_handbullet_old_l_0
		}
		a_hand = instance_create_depth(originx, originy, -101, obj_asgorehand)
		a_hand.alarm[0] = 1 * (room_speed / 30)
		a_hand.direction = odirection
		a_hand.speed = 16.3 * (30 / room_speed)
		a_hand.sprite_index = osprite
		a_hand.friction = 0
		a_hand.interval = 2 * (room_speed / 30)
	}
	else
	{
		audio_play_sound(snd_atklun, 20, false)
		alarm[1] = 8 * (room_speed / 30)
		flamespeed = 6 * (30 / room_speed)
		flamecount = 20
		dirchange += 1
		for (var i = 0; i < flamecount; i++)
		{
			fire = instance_create_depth(320, 0, -101, obj_fire)
			fire.direction = ((360 / flamecount) * i) + (dirchange * 5)
			fire.speed = flamespeed
		}
		for (var i = 0; i < flamecount; i++)
		{
			fire = instance_create_depth(0, 480, -101, obj_fire)
			fire.direction = ((360 / flamecount) * i) + (dirchange * 5)
			fire.speed = flamespeed
		}
		for (var i = 0; i < flamecount; i++)
		{
			fire = instance_create_depth(640, 480, -101, obj_fire)
			fire.direction = ((360 / flamecount) * i) + (dirchange * 5)
			fire.speed = flamespeed
		}
	}
}
if (wave == 8)
{
	instance_create_depth(x, y, -101, obj_cfiregen)
}
if (wave == 9)
{
	bulletwaves += 1
	if (bulletwaves < 16)
	{
		if (global.lunaticmode == 0)
		{
			for (var i = 0; i < 30; i++)
			{
				fire = instance_create_depth(origin1x, 0, -101, obj_fire)
				fire.direction = (360 / 30) * i
				fire.speed = 6 * (30 / room_speed)
				fire.image_xscale = 2
				fire.image_yscale = 2
			}
		}
		else
		{
			audio_play_sound(snd_atklun, 20, false)
			for (var i = 0; i < 30; i++)
			{
				fire = instance_create_depth(origin1x, 0, -101, obj_fire)
				fire.direction = (360 / 30) * i
				fire.speed = 9 * (30 / room_speed)
				fire.image_xscale = 1
				fire.image_yscale = 1
			}
			for (var i = 0; i < 30; i++)
			{
				fire = instance_create_depth(640 - origin1x, 0, -101, obj_fire)
				fire.direction = (360 / 30) * i
				fire.speed = 9 * (30 / room_speed)
				fire.image_xscale = 1
				fire.image_yscale = 1
			}
		}
	}
	alarm[1] = 9 * (room_speed / 30)
}