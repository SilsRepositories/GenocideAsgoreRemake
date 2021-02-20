timer += 1 * (30 / room_speed)
if (timer >= 5)
{
	instance_create_depth((-100 + random((room_width + 200))), (room_height + 10), -1, obj_orangeparticle)
	timer = 0
}