partx[7] = 68
party[7] = 0
partx[6] = 0
party[6] = 28
partx[5] = 16
party[5] = 70
partx[4] = 168
party[4] = 70
partx[3] = 50
party[3] = 130
partx[2] = 54
party[2] = 156
partx[1] = 32
party[1] = 210
partx[0] = -48
party[0] = 62
part[7] = 636
part[6] = 637
part[5] = 634
part[4] = 635
part[3] = 638
part[2] = 639
part[1] = 640
part[0] = 632
global.damagetaken = 0
global.hphealed = 0
global.wave = 0
floweycon = 0
fakeanim = 0
floweybyebye = 0
siner = 0
readytodunk = 0
moving = 1
basex = x
con = 0
shudder = 0
damagetaken = 0
startinghp = 99
framenum = 0
if (global.glasssoul == 1)
	startinghp = 1
global.time = 0
global.nhc = 0
hphealed = 0
ang = 0
if (global.survival)
{
	alarm[1] = 1 * (room_speed / 30)
	obj_fightbt_broken.visible = false
	obj_talkbt.visible = false
	obj_itembt_broken.visible = false
}
global.bosshp = 500000000
global.bossmaxhp = 500000000
global.lunaticsouls = 6
obj_rainbowbg.visible = false
if (global.lunaticmode == 1)
{
	global.bosshp = 40000000000
	global.bossmaxhp = 40000000000
	audio_stop_sound(asgoreMANDO)
	audio_play_sound(mus_lunatic, 20, true)
	alarm[5] = 345 * (room_speed / 30)
}
global.asgorepissed = 0
global.candodge = false
global.charadeath = 0
turns = 0
turns2 = 0
hurtanim = 0
instance_create_depth(x + 82, y + 102, -30, obj_asgorespear)