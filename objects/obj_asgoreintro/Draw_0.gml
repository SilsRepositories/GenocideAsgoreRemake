draw_self()
view_set_xport(0, 0 + (random_range(-shuddereffect, shuddereffect) * 8))
view_set_yport(0, 0 + (random_range(-shuddereffect, shuddereffect) * 8))
shuddereffect *= 0.9
if (con < 11)
{
	if (global.glasssoul == 1)
	{
		global.hp = 1
		global.maxhp = 1
	}
	var namex, namey;
	draw_set_color(c_white)
	namex = 30
	namey = 400
	draw_set_font(Font1)
	lvinfo = (global.name + "    LV " + string(global.lv))
	draw_text(30, 400, lvinfo)
	_redbar = (global.maxhp * 1.2)
	_yellowbar = (_redbar * ((global.hp * 1.2) / (global.maxhp * 1.2)))
	draw_set_color(c_red)
	draw_rectangle(275, 400, (275 + _redbar), 420, false)
	draw_set_color(c_yellow)
	draw_rectangle(275, 400, (275 + _yellowbar), 420, false)
	draw_set_color(c_white)
	draw_sprite(spr_hpname_0, 0, 240, 405)
	hpwrite = string(global.hp)
	if (global.hp < 10)
	    hpwrite = ("0" + string(global.hp))
	maxhpwrite = string(global.maxhp)
	if (global.maxhp < 10)
	    maxhpwrite = ("0" + string(global.maxhp))
	if (global.hp < 0)
	    hpwrite = "0"
	_hpinfo = ((hpwrite + " / ") + maxhpwrite)
	draw_text((295 + _redbar), 400, _hpinfo)
}
if (con == 1 && !instance_exists(obj_speechbubble))
{
	con = 2
	alarm[3] = 60 * (room_speed / 30)
	image_index = 1
}
if (con == 3)
{
	bubble = instance_create_depth(380, y + 40, -1000, obj_speechbubble)	
	writer = instance_create_depth(bubble.x + 38, bubble.y + 10, -10000, obj_speechwriter)
	writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_INTROTALK_1")
	writer.key = "KEY_ASGORE_INTROTALK_1"
	con = 4
	image_index = 0
}
if ((keyboard_check_pressed(ord("C")) || keyboard_check_pressed(vk_control)) && con < 4)
{
	con = 4
	audio_stop_sound(bergentruckunghousingMANDO)
	instance_destroy(obj_writer)
	alarm[1] = -1
}
if (con == 4 && !instance_exists(obj_speechbubble))
{
	con = 5
	audio_play_sound(bwoar, 20, 0)
	audio_sound_gain(bwoar, global.SOUND_VOLUME, 0)
	hspeed = -13 * (30 / room_speed)
	alarm[3] = 10 * (room_speed / 30)
}
if (con == 6)
{
	con = 7
	hspeed = 0
	alarm[3] = 30 * (room_speed / 30)
}
if (con == 8)
{
	image_speed = 1.5// * (room_speed / 30)
	image_index = 2
	audio_play_sound(mus_sfx_cinematiccut, 20, 0)
	audio_sound_gain(mus_sfx_cinematiccut, global.SOUND_VOLUME, 0)
	shuddereffect = 4
	con = 9
	alarm[3] = 30 * (room_speed / 30)
}
if (con == 9)
{
	if (image_index > 13)
	{
		image_speed = 0	
		alarm[3] = 30 * (room_speed / 30)
		con = 10
	}
}
if (con == 11)
{
	image_index = 15
	hspeed = -2.1 * (30 / room_speed)
	con = 12
	alarm[3] = 45 * (room_speed / 30)
	audio_play_sound(bwoar, 20, 0)
	audio_sound_gain(bwoar, global.SOUND_VOLUME, 0)
	with (all)
	{
		dust = instance_create_depth(0, 0, 10, obj_dustparticle)
		dust.image_alpha = 2
		dust.image_xscale = 400
		dust.image_yscale = 400
		depth = 0
	}
	obj_fightbt.sprite_index = bfight
	obj_talkbt.sprite_index = bact
	obj_itembt.sprite_index = bitem
}
if (con == 12)
{
	draw_sprite_ext(spr_asgorespear_0, 0, x + 80 + (spearrotation / 1.2), y + 110 - (spearrotation * 1.5), 2, 2, -spearrotation, c_red, 1)
	spearrotation += 4 * (30 / room_speed)
	if (spearrotation > 90)
		spearrotation = 90
}
if (con == 13)
{
	hspeed = 0
	draw_sprite_ext(spr_asgorespear_0, 0, x + 80 + 75, y + 110 - (spearrotation * 1.5), 2, 2, -90, c_red, 1)
	spearrotation -= 30 * (30 / room_speed)
	image_alpha = dust.image_alpha
	if (spearrotation == 0)
	{
		audio_play_sound(snd_break2, 20, 0)
		audio_sound_gain(snd_break2, global.SOUND_VOLUME, 0)
		dust2 = instance_create_depth(obj_fightbt.x, obj_fightbt.y, 0, obj_dustparticle)
		dust2.direction = irandom_range(45, 135)
		dust2.speed = random_range(8, 16)
		dust2.sprite_index = bfight_1
			
		dust3 = instance_create_depth(obj_fightbt.x + 20, obj_fightbt.y, 0, obj_dustparticle)
		dust3.direction = irandom_range(45, 135)
		dust3.speed = random_range(8, 16)
		dust3.sprite_index = bfight_2
			
		dust4 = instance_create_depth(obj_fightbt.x + 5, obj_fightbt.y, 0, obj_dustparticle)
		dust4.direction = irandom_range(45, 135)
		dust4.speed = random_range(8, 16)
		dust4.sprite_index = bfight_shatter1
			
		dust5 = instance_create_depth(obj_fightbt.x + 9, obj_fightbt.y, 0, obj_dustparticle)
		dust5.direction = irandom_range(45, 135)
		dust5.speed = random_range(8, 16)
		dust5.sprite_index = bfight_shatter2
			
		dust6 = instance_create_depth(obj_fightbt.x + 13, obj_fightbt.y, 0, obj_dustparticle)
		dust6.direction = irandom_range(45, 135)
		dust6.speed = random_range(8, 16)
		dust6.sprite_index = bfight_shatter3
		instance_destroy(obj_fightbt)
		con = 14
	}
	if (dust2 != noone)
	{
		dust2.image_angle += (dust2.hspeed * 10)
		dust3.image_angle -= (dust3.hspeed * 10)
		dust4.image_angle += (dust4.hspeed * 10)
		dust5.image_angle -= (dust5.hspeed * 10)
		dust6.image_angle += (dust5.hspeed * 10)
	}
}
if (con == 14)
{
	if (alarm[3] <= 0)
		alarm[3] = 25 * (room_speed / 30)
	hspeed = 12 * (30 / room_speed)
	draw_sprite_ext(spr_asgorespear_0, 0, x + 80 + 75, y + 110 - (spearrotation * 1.5), 2, 2, -90, c_red, 1)
	spearrotation += 20
	if (spearrotation > 90)
		spearrotation = 90
}
if (con == 15)
{
	hspeed = 0
	draw_sprite_ext(spr_asgorespear_0, 0, x + 80 + 75, y + 110 - (spearrotation * 1.5), 2, 2, -90, c_red, 1)
	if (instance_exists(dust))
		image_alpha = dust.image_alpha
	else
	{
		image_alpha = 0
		con = 16
	}
	spearrotation -= 30 * (30 / room_speed)
	if (spearrotation == 0)
	{
		audio_play_sound(snd_break2, 20, 0)
		audio_sound_gain(snd_break2, global.SOUND_VOLUME, 0)
		dust7 = instance_create_depth(obj_itembt.x, obj_itembt.y, 0, obj_dustparticle)
		dust7.direction = irandom_range(45, 135)
		dust7.speed = random_range(8, 16)
		dust7.sprite_index = bitem_1
			
		dust8 = instance_create_depth(obj_itembt.x + 20, obj_itembt.y, 0, obj_dustparticle)
		dust8.direction = irandom_range(45, 135)
		dust8.speed = random_range(8, 16)
		dust8.sprite_index = bitem_2
		instance_destroy(obj_itembt)
	}
	if (dust7 != noone)
	{
		dust7.image_angle += (dust7.hspeed * 10)
		dust8.image_angle -= (dust8.hspeed * 10)
	}
}
if (con == 16)
{
	con = 17
	alarm[3] = 90 * (room_speed / 30)
}
if (con == 18)
{
	if (global.lunaticmode == 0)
	{
		audio_play_sound(asgoreMANDO, 20, true)
		audio_sound_gain(asgoreMANDO, global.MUSIC_VOLUME, 0)
	}
	con = 19
	alarm[3] = 30 * (room_speed / 30)
}