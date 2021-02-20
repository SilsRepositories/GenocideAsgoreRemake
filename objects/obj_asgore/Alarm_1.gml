instance_destroy(obj_target)
instance_destroy(obj_targetbar)
if (global.survival)
{
	global.wave += 1
	if (damagetaken == 0 && global.wave > 1)
		global.nhc += 1
	else
		damagetaken = 0
}
if (global.charadeath == 1)
{
	instance_create_depth(obj_asgore.x + 100, obj_asgore.y + 60, -100000, obj_slice)
	global.damage = 9999999999
	global.charadeath = 2
	exit
}
if (global.bosshp > 0)
{
	obj_heart.visible = true
	global.menu = 255
	// "Bulletrain/1", "Bulletrain/2", 2 "spearswing", 3 "hand_opening", 4 "wavy_fire", 5 "warning_fire", 6 "hand_sweep", 7 "spearswing",
	// 8 "circles", 9 "bigbulletrain", 10 "spearswing", 11 "wavy_fire", 12 "hand_sweep", 13 "circles", 14 "spearswing", 15 "bigbulletrain", 16 "warning_fire",
	// 17 "circles", 18 "spearswing", 19 "hand_sweep", 20 "circles", 21 "bigbulletrain", 22 "spearswing"
	// floweyorder = {"Flowey/randomCirfast", "nothing", "Flowey/circlehole", "nothing", "nothing", "nothing", "nothing", "Flowey/circlehole", "Flowey/circle", "nothing", "Flowey/circlehole"}
	turns = turns2
	if (turns2 > 22)
	{
		turns = choose(0, 1, 2, 4, 5, 6, 8, 9)
		floweyrng = choose(1, 2, 3, 4, 5, 6, 7, 8)
		if (global.survival && (global.wave % 10 != 0))
			floweyrng = 5
		if (floweyrng == 1)
		{
			floweygen = instance_create_depth(x, y, -999, obj_floweybulletgen)
			floweygen.wave = 0	
		}
		if (floweyrng == 2)
		{
			floweygen = instance_create_depth(x, y, -999, obj_floweybulletgen)
			floweygen.wave = 1
		}
		if (floweyrng == 3)
		{
			floweygen = instance_create_depth(x, y, -999, obj_floweybulletgen)
			floweygen.wave = 2
		}		
		if (floweyrng == 4)
		{
			floweygen = instance_create_depth(x, y, -999, obj_floweybulletgen)
			floweygen.wave = 3
		}
	}
	if (turns2 == 0)
	{
		floweygen = instance_create_depth(x, y, -999, obj_floweybulletgen)
		floweygen.wave = 0
	}
	if (turns2 == 2 || turns == 7)
	{
		floweygen = instance_create_depth(x, y, -999, obj_floweybulletgen)
		floweygen.wave = 1
	}
	if (turns2 == 8)
	{
		floweygen = instance_create_depth(x, y, -999, obj_floweybulletgen)
		floweygen.wave = 2
	}
	if (turns == 0)
	{
		bulletgen = instance_create_depth(x, y, -999, obj_asgorebulletgen)
		bulletgen.wave = 0	
		bulletgen.alarm[0] = 210 * (room_speed / 30)
		bulletgen.alarm[1] = 1
		global.borderheight = 130
		global.borderwidth = 155
	}
	if (turns == 1)
	{
		bulletgen = instance_create_depth(x, y, -999, obj_asgorebulletgen)
		bulletgen.wave = 1	
		bulletgen.alarm[0] = 210 * (room_speed / 30)
		bulletgen.alarm[1] = 1
		global.borderheight = 130
		global.borderwidth = 155
	}
	if (turns == 2 || turns == 7 || turns == 10 || turns == 14 || turns == 18 || turns == 22)
	{
		audio_play_sound(snd_test, 20, 0)
		speargen = instance_create_depth(x - 88, y - 35, -999, obj_asgorespeargen)
		flash = instance_create_depth(x, y, -1000000, obj_whiteflash)
		flash.siner = 2
		speargen.spearmax = 5
		if (global.lunaticmode == 1)
			speargen.spearmax = 8
		global.borderwidth = 225
		global.borderheight = 140
		visible = false
		obj_asgorespear.visible = false
	}
	if (turns == 3)
	{
		bulletgen = instance_create_depth(x, y, -999, obj_asgorebulletgen)
		bulletgen.wave = 3
		bulletgen.alarm[0] = 150 * (room_speed / 30)
		bulletgen.alarm[1] = 1
		global.borderwidth = 215
		global.borderheight = 180
	}
	if (turns == 4 || turns == 11)
	{
		bulletgen = instance_create_depth(x, y, -999, obj_asgorebulletgen)
		bulletgen.wave = 4
		bulletgen.alarm[0] = 600 * (room_speed / 30)
		bulletgen.alarm[1] = 1
		global.borderwidth = 220
		global.borderheight = 180
	}
	if (turns == 5 || turns == 16)
	{
		bulletgen = instance_create_depth(x, y, -999, obj_asgorebulletgen)
		bulletgen.wave = 5
		bulletgen.alarm[0] = 9999 * (room_speed / 30)
		bulletgen.alarm[1] = 1
		bulletgen.alarm[3] = 35 * (room_speed / 30)
		global.borderwidth = 215
		global.borderheight = 180
	}
	if (turns == 6 || turns == 12 || turns == 19)
	{
		bulletgen = instance_create_depth(x, y, -999, obj_asgorebulletgen)
		bulletgen.wave = 6
		bulletgen.alarm[0] = 231 * (room_speed / 30)
		bulletgen.alarm[1] = 1
		global.borderwidth = 215
		global.borderheight = 180
	}
	if (turns == 8 || turns == 13 || turns == 17 || turns == 20)
	{
		bulletgen = instance_create_depth(x, y, -999, obj_asgorebulletgen)
		bulletgen.wave = 8
		bulletgen.alarm[0] = 180 * (room_speed / 30)
		bulletgen.alarm[1] = 1
		global.borderwidth = 215
		global.borderheight = 180
	}
	if (turns == 9 || turns == 15 || turns == 21)
	{
		bulletgen = instance_create_depth(x, y, -999, obj_asgorebulletgen)
		bulletgen.wave = 9	
		bulletgen.alarm[0] = 210 * (room_speed / 30)
		bulletgen.alarm[1] = 1
		global.borderheight = 180
		global.borderwidth = 200
	}
	turns2++
}
else
{
	instance_destroy(obj_menufire)
	bubble = instance_create_depth(430, y + 80, -1000, obj_speechbubble)	
	writer = instance_create_depth(bubble.x + 38, bubble.y + 10, -10000, obj_speechwriter)
	writer.text = "Why...\nyou.../%%"
	con = 1
}