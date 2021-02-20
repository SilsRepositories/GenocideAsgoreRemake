if (global.invc > 0) {
	image_speed = 0.5 * (30 / room_speed)
	global.invc -= 1
}
else {
	image_speed = 0
	image_index = 0
}
image_blend = c_red
if (global.glasssoul == 1)
	image_blend = c_aqua
ismoving = false
if (x != global.px || y != global.py)
	ismoving = true
global.px = x
global.py = y
if (global.survival)
{
	if (global.hp > (expect / 27364))
	{
		global.hp = 0
		global.cheatingpieceofshitgofuckyourself = 1
	}
}
if (global.hp <= 0)
{
	room_goto(room_gameover)
	global.hp = 0
	exit
}
expect = global.hp * 27364
if (global.hp > global.maxhp)
	global.hp = global.maxhp
obj_fightbt_broken.image_index = global.fightpieces
obj_talkbt.image_index = 0
obj_itembt_broken.image_index = global.itempieces
if (global.menu == 1)
{
	global.menulength = 3
	if (global.bmenucoord == 0) {
		obj_fightbt_broken.image_index = 6
		x = 42
		y = 446
	}
	if (global.bmenucoord == 1) {
		obj_talkbt.image_index = 1
		x = 195
		y = 446
	}
	if (global.bmenucoord == 2) {
	    obj_itembt_broken.image_index = 6
		x = 355
		y = 446
	}
}
if (global.menu == 2 || global.menu == 3)
{
	global.menulength = 1
    x = 60
	y = 267
}
if (global.menu == 4)
{
	global.menulength = 4
	if (global.lunaticsouls > 0 && obj_rainbowbg.visible == true && global.fightpieces == 5 && global.turns > 20)
		global.menulength = 5
	if (global.menucoord == 0)
	{
		x = 60
		y = 267
	}
	if (global.menucoord == 1)
	{
		x = 320
		y = 267
	}
	if (global.menucoord == 2)
	{
		x = 60
		y = 299
	}
	if (global.menucoord == 3)
	{
		x = 320
		y = 299
	}
	if (global.menucoord == 4)
	{
		x = 60
		y = 331
	}
}
if (global.menu == 5)
{
	if (global.menucoord == 0)
	{
		x = 60
		y = 267
	}
	if (global.menucoord == 1)
	{
		x = 320
		y = 267
	}
	if (global.menucoord == 2)
	{
		x = 60
		y = 299
	}
	if (global.menucoord == 3)
	{
		x = 320
		y = 299
	}
}
if (global.survival)
{
	if (y < (384 - global.borderheight))
		y = (384 - global.borderheight)
	if (x > (320 + global.borderwidth / 2) - 15)
		x = (320 + global.borderwidth / 2) - 15
	if (y > 369)
		y = 369
	if (x < (320 - global.borderwidth / 2))
		x = (320 - global.borderwidth / 2)
}
if (global.menu == 255)
{
	if (keyboard_check(vk_up))
	{
		y -= 4 * (30 / room_speed)
		if (keyboard_check(ord("X")) || keyboard_check(vk_rshift))
			y += 2 * (30 / room_speed)
		if (y < (384 - global.borderheight))
			y = (384 - global.borderheight)
	}
	if (keyboard_check(vk_right))
	{
		x += 4 * (30 / room_speed)
		if (keyboard_check(ord("X")) || keyboard_check(vk_rshift))
			x -= 2 * (30 / room_speed)
		if (x > (320 + global.borderwidth / 2) - 15)
			x = (320 + global.borderwidth / 2) - 15
	}
	if (keyboard_check(vk_down))
	{
		y += 4 * (30 / room_speed)
		if (keyboard_check(ord("X")) || keyboard_check(vk_rshift))
			y -= 2 * (30 / room_speed)
		if (y > 369)
			y = 369
	}
	if (keyboard_check(vk_left))
	{
		x -= 4 * (30 / room_speed)
		if (keyboard_check(ord("X")) || keyboard_check(vk_rshift))
			x += 2 * (30 / room_speed)
		if (x < (320 - global.borderwidth / 2))
			x = (320 - global.borderwidth / 2)
	}
}
audio_sound_gain(snd_heal, global.SOUND_VOLUME, 0)
audio_sound_gain(snd_select, global.SOUND_VOLUME, 0)
audio_sound_gain(snd_mysterygo, global.SOUND_VOLUME, 0)
audio_sound_gain(snd_menumov, global.SOUND_VOLUME, 0)
if ((keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)) && global.menu != 0 && global.menu < 99)
{
	if (global.menu == 5)
	{
		instance_destroy(obj_instawriter)
		instance_destroy(obj_writer)
		writer = instance_create_depth(58, 259, -10000, obj_writer)
		if (global.imenucoord == 0)
		{
			audio_play_sound(snd_heal, 20, 0)
			visible = false
			global.menu = 100
			if (global.item[0] > 0)
			{
				writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ITEM_0")
				writer.key = "KEY_ASGORE_ITEM_0"
				global.hp = global.maxhp
				global.asgorepissed = 1
				global.item[0] = 0
				exit
			}
		}
		if (global.imenucoord == 1)
		{
			heal = audio_play_sound(snd_heal, 20, 0)
			visible = false
			global.menu = 100
			if (global.item[1] > 0)
			{
				if (global.lv > 1)
				{
					writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ITEM_1")
					writer.key = "KEY_ASGORE_ITEM_1"
					global.lv -= 1
					global.maxhp = 20 + (4 * (global.lv - 1))
					global.hp = global.maxhp
				}
				else
				{
					writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ITEM_1_" + string(timesloved))
					writer.key = "KEY_ASGORE_ITEM_1_" + string(timesloved)
					timesloved += 1
					if (timesloved > 5)
						timesloved = 5
					if (timesloved == 5)
					{
						global.hp = global.maxhp
						audio_play_sound(snd_mysterygo, 20, 0)
						global.lv -= 1
						global.maxhp = 20 + (4 * (global.lv - 1))
						global.hp = global.maxhp
					}
					else
						audio_stop_sound(heal)
				}
				exit
			}
		}
		if (global.imenucoord == 2)
		{
			audio_play_sound(snd_heal, 20, 0)
			visible = false
			global.menu = 100
			if (global.item[2] > 0)
			{
				writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ITEM_2")
				writer.key = "KEY_ASGORE_ITEM_2"
				global.item[2] -= 1
				global.hp += 45
				if (global.hp >= global.maxhp)
				{
					global.hp = global.maxhp
					writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ITEM_2_MAX")
					writer.key = "KEY_ASGORE_ITEM_2_MAX"
				}
				exit
			}
		}		
		if (global.imenucoord == 3)
		{
			audio_play_sound(snd_heal, 20, 0)
			visible = false
			global.menu = 100
			if (global.item[3] > 0)
			{
				writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ITEM_3")
				writer.key = "KEY_ASGORE_ITEM_3"
				global.item[3] -= 1
				global.hp += 40
				global.atk += 4
				if (global.hp >= global.maxhp)
				{
					global.hp = global.maxhp
					writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ITEM_3_MAX")
					writer.key = "KEY_ASGORE_ITEM_3_MAX"
				}
				exit
			}
		}
	}
	if (global.menu == 4)
	{
		if (global.menucoord == 0)
		{
			instance_destroy(obj_instawriter)
			instance_destroy(obj_writer)
			writer = instance_create_depth(58, 259, -10000, obj_writer)
			writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_CHECK_NOPIE")
			writer.key = "KEY_ASGORE_CHECK_NOPIE"
			if (global.asgorepissed == 0)
			{
				writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_CHECK_NOPIE")
				writer.key = "KEY_ASGORE_CHECK_NOPIE"
				if (global.lunaticmode)
				{
					if (global.lunaticsouls == 0)
					{
						writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_CHECK_NOPIE_NODEF")
						writer.key = "KEY_ASGORE_CHECK_NOPIE_NODEF"
					}
					else
					{
						writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_CHECK_NOPIE_INFDEF")
						writer.key = "KEY_ASGORE_CHECK_NOPIE_INFDEF"
					}
				}
			}
			else
			{
				writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_CHECK_PIE")
				writer.key = "KEY_ASGORE_CHECK_PIE"
				if (global.lunaticmode)
				{
					if (global.lunaticsouls == 0)
					{
						writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_CHECK_PIE_NODEF")
						writer.key = "KEY_ASGORE_CHECK_PIE_NODEF"
					}
					else
					{
						writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_CHECK_PIE_INFDEF")
						writer.key = "KEY_ASGORE_CHECK_PIE_INFDEF"
					}
				}
			}
			visible = false
			global.menu = 100	
		}
		if (global.menucoord == 1)
		{
			instance_destroy(obj_instawriter)
			instance_destroy(obj_writer)
			writer = instance_create_depth(58, 259, -10000, obj_writer)
			writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ACT_" + string(timesacted))
			writer.key = "KEY_ASGORE_ACT_" + string(timesacted)
			if (timesacted > 2 && timesacted < 8)
			{
				writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ACT_3")
				writer.key = "KEY_ASGORE_ACT_3"
			}
			if (timesacted >= 8)
			{
				writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ACT_4")
				writer.key = "KEY_ASGORE_ACT_4"
			}
			if (global.lunaticmode == 0)
			{
				if (timesacted >= 19)
				{
					writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ACT_5")
					writer.key = "KEY_ASGORE_ACT_5"
				}
				if (timesacted >= 20)
				{
					writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ACT_6")
					writer.key = "KEY_ASGORE_ACT_6"
					global.charadeath = 1
				}
			}
			if (talked == 1)
			{
				if (global.deaths < 6)
				{
					writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ACT_DEATH_" + string(global.deaths))
					writer.key = "KEY_ASGORE_ACT_DEATH_" + string(global.deaths)
				}
				if (global.deaths == 6)
				{
					writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ACT_DEATH_6")
					writer.key = "KEY_ASGORE_ACT_DEATH_6"
				}
				if (global.deaths > 6)
				{
					writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_ACT_DEATH_7")
					writer.key = "KEY_ASGORE_ACT_DEATH_7"
				}
				talked = 0
			}
			timesacted += 1
			visible = false
			global.menu = 100	
		}
		if (global.menucoord == 2)
		{
			instance_destroy(obj_instawriter)
			instance_destroy(obj_writer)
			writer = instance_create_depth(58, 259, -10000, obj_writer)
			writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_BUTTONASSEMBLY_" + string(global.fightpieces))
			writer.key = "KEY_ASGORE_BUTTONASSEMBLY_" + string(global.fightpieces)
			if (global.fightpieces == 5)
			{
				writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_BUTTONASSEMBLY_5")
				writer.key = "KEY_ASGORE_BUTTONASSEMBLY_5"
			}
			else
				global.fightpieces += 1
			visible = false
			global.menu = 100	
		}
		if (global.menucoord == 3)
		{
			instance_destroy(obj_instawriter)
			instance_destroy(obj_writer)
			writer = instance_create_depth(58, 259, -10000, obj_writer)
			writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_BUTTONASSEMBLY_" + string(global.itempieces))
			writer.key = "KEY_ASGORE_BUTTONASSEMBLY_" + string(global.itempieces)
			if (global.itempieces == 5)
			{
				writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_BUTTONASSEMBLY_5")
				writer.key = "KEY_ASGORE_BUTTONASSEMBLY_5"
			}
			else
				global.itempieces += 1
			visible = false
			global.menu = 100	
		}
		if (global.menucoord == 4)
		{
			instance_destroy(obj_instawriter)
			instance_destroy(obj_writer)
			writer = instance_create_depth(58, 259, -10000, obj_writer)
			writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_LUNATICSOUL_" + string(6 - global.lunaticsouls))
			writer.key = "KEY_ASGORE_LUNATICSOUL_" + string(6 - global.lunaticsouls)
			global.lunaticsouls -= 1
			visible = false
			global.menu = 100	
		}
	}
	if (global.menu == 3)
	{
		global.menu = 4
	}
	if (global.menu == 2)
	{
		instance_create_depth(48, 256, -100000, obj_target)
		visible = false
		global.menu = 99
	}
	if (global.menu == 1 && global.bmenucoord == 0)
	{
		global.menu = 2
	}
	if (global.menu == 1 && global.bmenucoord == 1)
	{
		global.menu = 3
	}
	if (global.menu == 1 && global.bmenucoord == 2)
	{
		global.menu = 5
	}
	global.menucoord = 0
	audio_play_sound(snd_select, 20, 0)
}
if ((keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_rshift)) && global.menu != 0 && global.menu < 6)
	global.menu = 1
if (global.menu == 1)
{
	if (keyboard_check_pressed(vk_left))
	{
		global.bmenucoord -= 1
		audio_play_sound(snd_menumov, 20, 0)
		if (global.bmenucoord < 0)
			global.bmenucoord = 0
	}
	if (keyboard_check_pressed(vk_right))
	{
		global.bmenucoord += 1
		audio_play_sound(snd_menumov, 20, 0)
		if (global.bmenucoord > 2)
			global.bmenucoord = 2
	}
}
if (global.menu == 3 || global.menu == 4 || global.menu == 5)
{
	if (keyboard_check_pressed(vk_left))
	{
		global.menucoord -= 1
		audio_play_sound(snd_menumov, 20, 0)
		if (global.menucoord < 0)
			global.menucoord = 0
	}
	if (keyboard_check_pressed(vk_right))
	{
		global.menucoord += 1
		audio_play_sound(snd_menumov, 20, 0)
		if (global.menucoord > (global.menulength - 1))
			global.menucoord = (global.menulength - 1)
	}
}
if (global.menu == 4 || global.menu == 5)
{
	if (keyboard_check_pressed(vk_up))
	{
		global.menucoord -= 2
		audio_play_sound(snd_menumov, 20, 0)
		if (global.menucoord < 0)
			global.menucoord += 2
	}
	if (keyboard_check_pressed(vk_down))
	{
		global.menucoord += 2
		audio_play_sound(snd_menumov, 20, 0)
		if (global.menucoord > (global.menulength - 1))
			global.menucoord -= 2
	}
}
if (global.menu == 5)
{
	offset = 0
	if (global.item[0] == 0)
		offset = 1
	if (global.item[2] == 0 && global.imenucoord > 1)
		offset = 1
	global.imenucoord = global.menucoord + offset
	if (global.item[global.imenucoord] == 0)
		global.imenucoord += 1
}
if (global.fightpieces < 5 && global.bmenucoord == 0)
	global.bmenucoord = 1
if (global.itempieces < 5 && global.bmenucoord == 2)
	global.bmenucoord = 1