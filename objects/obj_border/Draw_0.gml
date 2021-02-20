draw_set_alpha(1)
borderwidth = width
borderheight = height
global.borderc_l = 320 - (width / 2)
global.borderc_r = 320 + (width / 2)
global.borderc_u = 384 - height
if (width != global.borderwidth) {
	if (global.borderwidth > width) {
		width += 40 * (30 / room_speed)
		if (width > global.borderwidth) {
			width = global.borderwidth	
		}
	}
	if (global.borderwidth < width) {
		width -= 40 * (30 / room_speed)	
		if (width < global.borderwidth) {
			width = global.borderwidth	
		}
	}
	if ((global.survival && global.wave == 1) || !global.survival)
		obj_heart.x = 312
}
if (height != global.borderheight) {
	if (global.borderheight > height) {
		height += 40 * (30 / room_speed)
		if (height > global.borderheight) {
			height = global.borderheight	
		}
	}
	if (global.borderheight < height) {
		height -= 40 * (30 / room_speed)
		if (height < global.borderheight) {
			height = global.borderheight	
		}
	}
	if ((global.survival && global.wave == 1) || !global.survival)
		obj_heart.y = 384 - (global.borderheight / 2)
}
if (width == 570 && height == 140 && global.menu == 0)
{
	obj_heart.visible = true
	global.menu = 1
	writer = instance_create_depth(58, 259, -10000, obj_writer)
	writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_IDLE_" + string(irandom_range(1,5)))
	writer.key = "KEY_ASGORE_IDLE_" + string(irandom_range(1,5))
	if (global.lunaticmode)
	{
		writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_IDLELUNATIC_" + string(irandom_range(1,5)))
		writer.key = "KEY_ASGORE_IDLELUNATIC_" + string(irandom_range(1,5))
	}
	instawriter = instance_create_depth(93, 259, -10000, obj_instawriter)
	instawriter.str = ds_map_find_value(global.text_data, "KEY_FIGHTMENU")
	instawriter.key = "KEY_FIGHTMENU"
	if (global.classicmode)
	{
		if (!instance_exists(obj_menufire))
		{
			mfire = instance_create_depth(-30, 410, -300, obj_menufire)
			mfire.hspeed = 12 * (30 / room_speed)
			if (global.lunaticmode == 1)
				mfire.hspeed = 24 * (30 / room_speed)
			if (global.lunaticmode)
			{
				mfire = instance_create_depth(660, 410, -300, obj_menufire)
				mfire.hspeed = -24 * (30 / room_speed)
			}
		}
	}
}
else if (global.menu == 0)
	obj_heart.visible = false	
if (global.glasssoul == 1)
	global.maxhp = 1
if (global.menu == 0 && !global.classicmode)
{
	obj_heart.visible = false	
	if (!instance_exists(obj_menufire))
	{
		mfire = instance_create_depth(660, 410, -300, obj_menufire)
		mfire.hspeed = -12 * (30 / room_speed)
		if (global.lunaticmode == 1)
			mfire.hspeed = -24 * (30 / room_speed)
	}
}
if (global.menu == 1)
{
	writer.visible = true
	instawriter.visible = false
}
if (global.menu == 2 || global.menu == 3)
{
	with (instawriter)
	{
		str = ds_map_find_value(global.text_data, "KEY_FIGHTMENU")
		key = "KEY_FIGHTMENU"
	}
	writer.visible = false
	instawriter.visible = true
}
if (global.menu == 4)
{
	if (global.lunaticmode == 1 && obj_rainbowbg.visible && global.lunaticsouls > 0 && global.fightpieces == 5 && global.turns > 20)
	{
		with (instawriter)
		{
			str = ds_map_find_value(global.text_data, "KEY_ACTMENULUNATIC")
			key = "KEY_ACTMENULUNATIC"
		}
	}
	else
	{
		with (instawriter)
		{
			str = ds_map_find_value(global.text_data, "KEY_ACTMENU")
			key = "KEY_ACTMENU"
		}	
	}
}
if (global.menu == 5)
{
	writer.visible = false
	instawriter.visible = true
	global.items = 0
	global.str = ""
	if (global.item[0] > 0)
	{
		global.str += "* Pie           "
		global.items += 1
	}
	if (global.item[1] > 0)
	{
		global.str += "* LOVE          "
		global.items += 1
		if (global.items == 2)
			global.str += "\n"
	}
	if (global.item[2] > 0)
	{
		global.str += "* SnowPiece " + "x" + string(global.item[2]) + "  "
		global.items += 1
		if (global.items == 2)
			global.str += "\n"
	}
	if (global.item[3] > 0)
	{
		global.str += "* L.Hero " + "x" + string(global.item[3]) + "     "
		global.items += 1
		if (global.items == 2)
			global.str += "\n"
	}
	global.menulength = global.items
	with (instawriter)
	{
		str = global.str
	}
}
if (global.menu == 99)
{
	if (instance_exists(obj_writer))
		instance_destroy(obj_writer)	
	if (instance_exists(obj_instawriter))
		instance_destroy(obj_instawriter)	
}
draw_set_color(c_white)
draw_rectangle(315 - (width / 2), 379 - height, 325 + (width / 2), 389, false)
draw_set_color(c_black)
draw_rectangle(320 - (width / 2), 384 - height, 320 + (width / 2), 384, false)
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
    hpwrite = "00"
_hpinfo = ((hpwrite + " / ") + maxhpwrite)
draw_text((295 + _redbar), 400, _hpinfo)