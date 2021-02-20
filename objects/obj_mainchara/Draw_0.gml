draw_self()
draw_set_font(fnt_dotum)
draw_set_color(c_white)
draw_set_alpha(text_alpha)
text_alpha += 0.02 * (30 / room_speed)
if (text_alpha > 0.6)
	text_alpha = 0.6
draw_text(10, camera_get_view_y(view_camera[0]) + 220, "Press C to skip")
draw_set_alpha(1)