writer = instance_create_depth(42, view_yport[0] + 167, -10000, obj_writer)
writer.text = ds_map_find_value(global.text_data, key)
writer.key = key
writer.image_xscale = 0.5
writer.image_yscale = 0.5