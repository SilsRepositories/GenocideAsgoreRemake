image_speed = 0
line = 0
con = 0
alarm[0] = 1
alarm[1] = 90 * (room_speed / 30)
if (global.hp == 0)
{
	alarm[0] = -1
	alarm[1] = -1
	con = 4
}
else
{
	audio_play_sound(bergentruckunghousingMANDO, 20, 0)
	audio_sound_gain(bergentruckunghousingMANDO, global.MUSIC_VOLUME, 0)
}
dust2 = noone
dust3 = noone
dust4 = noone
dust5 = noone
dust6 = noone
dust7 = noone
dust8 = noone
spearrotation = 0
x = 160
global.lv = 20
global.hp = 99
global.maxhp = 99
shuddereffect = 0