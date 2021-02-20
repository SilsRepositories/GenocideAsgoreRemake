ac = (1.5 + sin((siner / 20)))
siner += 1 * (30 / room_speed)
draw_set_alpha(1)
col += 1 * (30 / room_speed)
if (col > 255)
	col = 0
for (i = 0; i < 10; i += 1)
{
    draw_set_alpha(((0.8 - (i / 16)) * amt))
	color = make_color_hsv(col, 233, abs(sin(ac) * 140))
	draw_set_color(color)
    draw_rectangle(-10, (room_height - ((i * i) * ac)), (room_width + 10), (room_height - (((i + 1) * (i + 1.06)) * ac)), false)
}
draw_set_alpha(1)
if (fade == 1)
{
    amt -= 0.03 * (30 / room_speed)
    if (amt < 0.05)
        instance_destroy()
}

