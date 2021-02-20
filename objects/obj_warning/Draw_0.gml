if (global.fpsmode == 1)
{
	if (framenum == 1)
		framenum = 0
	else
		framenum = 1
}
if (!haswarning)
{
	draw_set_color(color)
	if (global.lunaticmode == 0)
	{
		draw_rectangle(x, y, x + (global.borderwidth / 3), y + global.borderheight, true)
		draw_sprite_ext(warning_exclamation, 0, x + 30, y + 50, 1, 1, 0, color, 1)
	}
	else
	{
		draw_rectangle(x, y, x + (global.borderwidth / 2), y + global.borderheight, true)
		draw_sprite_ext(warning_exclamation, 0, x + 60, y + 50, 1, 1, 0, color, 1)
	}
}
else
{
	if (framenum == 1)
		exit
	if (global.lunaticmode == 0)
	{
		firetop = instance_create_depth(x + random(global.borderwidth / 3), y, -1000, obj_fire)
		firetop.vspeed = 7.7 * (30 / room_speed)
		firetop.image_xscale = 0.88
		firetop.image_yscale = 0.88
		firetop.lowerlimit = 384
		firebot = instance_create_depth(x + random(global.borderwidth / 3), 384, -1000, obj_fire)
		firebot.vspeed = -7.7 * (30 / room_speed)
		firebot.image_xscale = 0.88
		firebot.image_yscale = 0.88
		firebot.upperlimit = 384 - global.borderheight
	}
	else
	{
		firetop = instance_create_depth(x + random(global.borderwidth / 2), y, -1000, obj_fire)
		firetop.vspeed = 9 * (30 / room_speed)
		firetop.image_xscale = 0.98
		firetop.image_yscale = 0.98
		firetop.lowerlimit = 384
		firebot = instance_create_depth(x + random(global.borderwidth / 2), 384, -1000, obj_fire)
		firebot.vspeed = -9 * (30 / room_speed)
		firebot.image_xscale = 0.98
		firebot.image_yscale = 0.98
		firebot.upperlimit = 384 - global.borderheight	
	}
	fires += 1
	if (fires > 16)
		instance_destroy()
}