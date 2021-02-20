if ((!keyboard_check(ord("Z")) && !keyboard_check(vk_enter)) && image_speed == 0)
	canregister = true	
if ((keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)) && canregister)
{
	hspeed = 0
	image_speed = 1
	canregister = false
	instance_create_depth(obj_asgore.x + 100, obj_asgore.y + 60, -100000, obj_slice)
	myx = (x + (sprite_width / 2))
    myperfectx = (obj_target.x + (obj_target.sprite_width / 2))
    bonusfactor = abs((myx - myperfectx))
    if (bonusfactor == 0)
        bonusfactor = 1
	defarg = -9999999
	if (global.lunaticmode == 1)
	{
		if (global.lunaticsouls == 6)
			defarg = 999
		if (global.lunaticsouls == 5)
			defarg = 10
		if (global.lunaticsouls == 4)
			defarg = -10
		if (global.lunaticsouls == 3)
			defarg = -50
		if (global.lunaticsouls == 2)
			defarg = -100
		if (global.lunaticsouls == 1)
			defarg = -5000
		if (global.lunaticsouls == 0)
			defarg = -240000000
	}
	pwr = (99 + global.atk)
	global.damage = (pwr - defarg)
	global.damage += random(2)
	if (global.damage < 1)
		global.damage = 1
    global.stretch = ((obj_target.sprite_width - bonusfactor) / obj_target.sprite_width)
    if (bonusfactor <= 12)
        global.damage = round((global.damage * 2.2))
    if (bonusfactor > 12)
        global.damage = round(((global.damage * global.stretch) * 2))
}
if (hspeed > 0 && x > 560 || hspeed < 0 && x < 80)
{
	obj_asgore.hurtanim = 4
	instance_destroy(obj_target)
	instance_destroy()
}