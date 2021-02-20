s += 1 * (30 / room_speed)
x += (sin((s / sv)) * sf) * (30 / room_speed)
if (y > (room_height + 100))
{
	if (instance_number(obj_sinefire_asghelix) == 1)
		obj_asgorebulletgen.alarm[0] = 1
    instance_destroy()
}