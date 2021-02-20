draw_self()
if (circlespin)
{
	direction += 4 * (30 / room_speed)
	distance -= 2.5 * (30 / room_speed)
	if (distance < 100)
		distance += 0.5 * (30 / room_speed)
	if (distance < 50)
		distance += 1 * (30 / room_speed)
}
if (type == 0)
	image_blend = c_grey
if (type == 1)
	image_blend = $FFA914
if (type == 2)
	image_blend = c_orange
if (type == 3)
	image_blend = c_white
x = (320 + lengthdir_x(distance, direction))
y = (384 - (global.borderheight / 2) + lengthdir_y(distance, direction))