if (line == 6)
{
	alarm[2] = 90 * (room_speed / 30)
	exit
}
writer = instance_create_depth(x - 80, 280, -10000, obj_writer)
writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_INTRO")
if (line > 0)
	writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_INTRO-" + string(line))	
writer.canskip = false