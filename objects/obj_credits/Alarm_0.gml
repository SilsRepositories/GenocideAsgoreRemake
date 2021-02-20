writer = instance_create_depth(120, 300, -10000, obj_writer)
if (global.charadeath == 0)
{
	writer.text = ds_map_find_value(global.text_data, "KEY_PRECREDITS_0")
	writer.key = "KEY_PRECREDITS_0"
}
else if (go == 0)
{
	writer.text = ds_map_find_value(global.text_data, "KEY_PRECREDITSCHARA_0")
	writer.key = "KEY_PRECREDITSCHARA_0"
}
if (go == 1)
{
	writer.text = ds_map_find_value(global.text_data, "KEY_INTRO_POSTSUICIDE_" + string(gj))
	writer.key = "KEY_INTRO_POSTSUICIDE_" + string(gj)
}
con += 1