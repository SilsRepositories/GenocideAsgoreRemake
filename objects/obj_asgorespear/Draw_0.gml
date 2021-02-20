siner += 1 * (30 / room_speed)
y += (sin((siner / 15)) * 0.3)
angle += (sin((siner / 15)) * 0.02)
xhand1 = lengthdir_x(55, angle)
yhand1 = lengthdir_y(55, angle)
rdistx = (x + (xhand1 * 2))
rdisty = (y + (yhand1 * 2))
if (armtest == 1)
{
    if instance_exists(obj_asgore)
    {
        point1y = ((obj_asgore.party[5] + 64) + obj_asgore.y)
        point1x = ((obj_asgore.partx[5] + 14) + obj_asgore.x)
        armlength = point_distance(point1x, point1y, (x - xhand1), (y - yhand1))
        armangle = point_direction(point1x, point1y, (x - xhand1), (y - yhand1))
        armsize = (armlength / 40)
        if (armsize < 0.35)
            armsize = 0
        draw_sprite_ext(spr_asgoreb_ballarm_0, 0, point1x, point1y, (armsize * 2), 2, armangle, c_white, 1)
        point1y = ((obj_asgore.party[4] + 64) + obj_asgore.y)
        point1x = ((obj_asgore.partx[4] + 34) + obj_asgore.x)
        armlength = point_distance(point1x, point1y, rdistx, rdisty)
        if (armlength > 100)
        {
            armoff = ((armlength - 100) / 2)
            rdistx = (x + (lengthdir_x((55 - armoff), angle) * 2))
            rdisty = (y + (lengthdir_y((55 - armoff), angle) * 2))
            armlength = point_distance(point1x, point1y, rdistx, rdisty)
        }
        armangle = point_direction(point1x, point1y, rdistx, rdisty)
        if (armangle > 100)
            point1y -= 12
        armsize = (armlength / 40)
        if (armsize < 0.6)
            armsize = 0
        draw_sprite_ext(spr_asgoreb_ballarm_0, 0, point1x, point1y, (armsize * 2), 2, armangle, c_white, 1)
    }
}
col += 1.4 * (30 / room_speed)
if (col > 255)
	col = 0
color = make_color_hsv(col, 233, 255)
draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, angle, color, 1)
draw_sprite_ext(spr_spearhandr_0, image_index, rdistx, rdisty, 2, 2, angle, c_white, 1)
draw_sprite_ext(spr_spearhandl_0, image_index, (x - xhand1), (y - yhand1), 2, 2, angle, c_white, 1)
if (obj_rainbowbg.visible)
{
	ang += 4 * (30 / room_speed)
	if (global.lunaticsouls > 0)
		draw_sprite_ext(spr_heart_0, 0, x + 30 + lengthdir_x(90 + abs(sin(siner / 30) * 30), 0 + ang), (100 + lengthdir_y(90 + abs(sin(siner / 30) * 30), 0 + ang)), 1, 1, 0, c_aqua, 1)
	if (global.lunaticsouls > 1)
		draw_sprite_ext(spr_heart_0, 0, x + 30 + lengthdir_x(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 1 + ang), (100 + lengthdir_y(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 1 + ang)), 1, 1, 0, c_green, 1)	
	if (global.lunaticsouls > 2)
		draw_sprite_ext(spr_heart_0, 0, x + 30 + lengthdir_x(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 2 + ang), (100 + lengthdir_y(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 2 + ang)), 1, 1, 0, c_yellow, 1)
	if (global.lunaticsouls > 3)
		draw_sprite_ext(spr_heart_0, 0, x + 30 + lengthdir_x(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 3 + ang), (100 + lengthdir_y(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 3 + ang)), 1, 1, 0, c_orange, 1)
	if (global.lunaticsouls > 4)
		draw_sprite_ext(spr_heart_0, 0, x + 30 + lengthdir_x(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 4 + ang), (100 + lengthdir_y(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 4 + ang)), 1, 1, 0, c_purple, 1)
	if (global.lunaticsouls > 5)
		draw_sprite_ext(spr_heart_0, 0, x + 30 + lengthdir_x(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 5 + ang), (100 + lengthdir_y(90 + abs(sin(siner / 30) * 30), (360 / global.lunaticsouls) * 5 + ang)), 1, 1, 0, c_blue, 1)
}