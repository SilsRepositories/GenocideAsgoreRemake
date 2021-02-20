if (global.hp < startinghp)
{
	damagetaken += abs(startinghp - global.hp)
	startinghp = global.hp
	global.nhc = 0
}
if (global.hp > startinghp)
{
	hphealed += abs(global.hp - startinghp)
	startinghp = global.hp
}
global.damagetaken = damagetaken
global.hphealed = hphealed
global.turns = turns2
if (global.bosshp > 0)
{
	part[7] = spr_asgoreb_head1_0
	part[6] = asgoretorso
	part[5] = spr_asgoreb_arml_0
	part[4] = spr_asgoreb_armr_0
	part[3] = spr_asgoreb_dress_0
	part[2] = spr_asgoreb_legs_0
	part[1] = spr_asgoreb_feet_0
	part[0] = spr_asgoreb_cape_0
	if (shudder > 0)
		draw_sprite_ext(flowey, 2, (x + partx[6]) + 170, (y + party[6]) - 20, 1, 1, 0, c_white, 1)
	else
		draw_sprite_ext(flowey, floweycon, (x + partx[6]) + 170, (y + party[6]) - 20, 1, 1, 0, c_white, 1)
	for (i = 0; i < 8; i++)
	{
		if (i != 6)
			draw_sprite_ext(part[i], fakeanim, (x + partx[i]), (y + party[i]), 2, 2, 0, c_white, 1)
		else
			draw_sprite_ext(part[i], 6 - global.lunaticsouls, (x + partx[i]), (y + party[i]), 2, 2, 0, c_white, 1)
	}
	if (alarm[2] <= 0)
		alarm[2] = 20 * (room_speed / 30)
	siner += 1 * (30 / room_speed)
	fakeanim += 0.1
	if (moving == 1)
	{
	    party[7] += (sin((siner / 15)) * 0.3)
	    party[6] += (sin((siner / 15)) * 0.2)
	    party[5] += (cos((siner / 15)) * 0.1)
	    party[4] += (cos((siner / 15)) * 0.1)
	    party[3] += (sin((siner / 15)) * 0.1)
	    party[0] += (sin((siner / 15)) * 0.05)
	}
}
else
{
	obj_rainbowbg.visible = false
	draw_sprite_ext(asgoreded1, 0, x - 65, 45, 1, 1, 0, c_white, image_alpha)
	draw_sprite_ext(flowey, 2, x + 170 + (floweybyebye * 5), (y + 50) - 8 * (floweybyebye / 3), 1, 1, -floweybyebye * 3, c_white, 1)
	floweybyebye += 1 * (30 / room_speed)
}
view_set_xport(0, 0)
if (shudder > 0)
{
	x = basex + random_range(-shudder, shudder)
	shudder -= 1 * (30 / room_speed)
	view_set_xport(0, random_range(-shudder, shudder) / 6)
}
else if (!global.candodge)
	x = basex
if (hurtanim == 2)
{
	dmg = instance_create_depth(x + 140, y + 100, -100000, obj_damagewriter)
	dmg.damage = global.damage
	dmg.apparenthp = global.bosshp
	global.bosshp -= global.damage
	if (global.bosshp < 1)
	{
		rank = 1
		if (hphealed == 0)
			rank += 1
		if (damagetaken == 0)
			rank += 1
		if (global.glasssoul)
			rank += 1
		if (global.classicmode)
			rank += 1
		if (global.lunaticmode)
			rank += 1
		if (global.asgorepissed)
			rank += 1
		ini_open("undertale.ini")
		currentrank = ini_read_real("General", "C", 0)
		if (currentrank < rank)
			ini_write_real("General", "C", rank)
		ini_close()
		audio_stop_sound(asgoreMANDO)
		audio_stop_sound(mus_lunatic)
		instance_destroy(obj_barrier)
		instance_destroy(obj_purplegradienter)
		instance_destroy(obj_asgorespear)
		instance_destroy(obj_orangeparticlegen)
		if (global.lunaticmode == 1)
			room_goto(room_lunaticending)
		else
			audio_play_sound(mus_sfx_yowl, 20, 0)
	}
	dmg.alarm[0] = 60 * (room_speed / 30)
	hurtanim = 3
	if (global.damage > 400000)
		shudder = 30
}
if (hurtanim == 3)
{
	alarm[1] = 40 * (room_speed / 30)
	hurtanim = 0
}
if (hurtanim == 4)
{
	dmg = instance_create_depth(x + 100, y + 100, -100000, obj_damagewriter)
	dmg.damage = 0
	alarm[1] = 1 * (room_speed / 30)
	dmg.alarm[0] = 30 * (room_speed / 30)
	hurtanim = 0
}
if (hurtanim == 5)
{
	hspeed = -8 * (30 / room_speed)
	alarm[4] = 20 * (room_speed / 30)
	hurtanim = 0
}
if (instance_exists(obj_asgorespear))
	obj_asgorespear.hspeed = hspeed
if (con == 1 && !instance_exists(obj_speechbubble))
{
	audio_play_sound(snd_vaporized, 20, 0)
	con = 2
	alarm[3] = 60 * (room_speed / 30)
}
if (con == 2)
{
	if (global.fpsmode == 1)
	{
		if (framenum == 1)
			framenum = 0
		else
			framenum = 1
	}
	if (framenum == 1)
		exit
	image_alpha -= (1 / 60)
	dust1 = instance_create_depth(x + random(230), y + random_range(40, 240), -10000, obj_dustparticle)
	dust2 = instance_create_depth(x + random(230), y + random_range(40, 240), -10000, obj_dustparticle)
	dust3 = instance_create_depth(x + random(230), y + random_range(40, 240), -10000, obj_dustparticle)
	with (dust1)
	{
		hspeed = random_range(-3, 3)
		vspeed = random_range(-3, -1)
	}
	with (dust2)
	{
		hspeed = random_range(-3, 3)
		vspeed = random_range(-3, -1)
	}
	with (dust3)
	{
		hspeed = random_range(-3, 3)
		vspeed = random_range(-3, -1)
	}
}
if (con == 3)
{
	alarm[3] = 50 * (room_speed / 30)
	con = 4
	dust9 = instance_create_depth(0, 0, -1000000, obj_dustparticle)
	dust9.reverse = 1
	dust9.image_blend = c_black
	dust9.image_alpha = 0
	dust9.image_xscale = 160
	dust9.image_yscale = 120
}
if (con == 5)
{
	room_goto(room_credits)
}