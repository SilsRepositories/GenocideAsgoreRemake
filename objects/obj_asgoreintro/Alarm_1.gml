line += 1
instance_destroy(obj_writer)
alarm[0] = 1 * (room_speed / 30)
alarm[1] = 110 * (room_speed / 30)
if (line == 5)
	alarm[1] = 217 * (room_speed / 30)
if (line == 6)
	alarm[1] = -1