bubble = instance_create_depth(380, y + 40, -1000, obj_speechbubble)	
writer = instance_create_depth(bubble.x + 38, bubble.y + 10, -10000, obj_speechwriter)
writer.text = ds_map_find_value(global.text_data, "KEY_ASGORE_INTROTALK_0")
writer.key = "KEY_ASGORE_INTROTALK_0"
con += 1