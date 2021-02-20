width = 300
height = 75
draw_set_color(c_white)
draw_rectangle(30, view_yport[0] + 160, width, view_yport[0] + 160 + height, false)
draw_set_color(c_black)
draw_rectangle(32, view_yport[0] + 162, width - 2, view_yport[0] + 162 + (height - 4), false)
if (!instance_exists(obj_writer) && !instance_exists(obj_instawriter) && writer != 0)
	instance_destroy()