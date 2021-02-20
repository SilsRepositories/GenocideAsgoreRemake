global.menu = 0
if (global.lunaticmode == 1)
{
	obj_rainbowbg.visible = true
	audio_sound_pitch(mus_lunatic, 1)
}
obj_asgore.visible = true
obj_asgorespear.visible = true
if (!global.survival)
{
	global.borderwidth = 570
	global.borderheight = 140
}
else
	obj_asgore.alarm[1] = 1 * (room_speed / 30)
with (obj_asgorehand)
	instance_destroy()	
with (obj_fire)
	instance_destroy()	
with (obj_wavefire)
	instance_destroy()	
with (obj_cfire)
	instance_destroy()	
with (obj_cfiregen)
	instance_destroy()
with (obj_floweybulletgen)
	instance_destroy()
with (obj_floweypellet)
	instance_destroy()	
instance_destroy()