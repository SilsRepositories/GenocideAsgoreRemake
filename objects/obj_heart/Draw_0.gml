draw_self()
if (global.menu == 2)
{
	draw_set_color(c_red)
	draw_rectangle(350, 266, 450, 286, false)
	draw_set_color(c_lime)
	draw_rectangle(350, 266, 350 + ((global.bosshp / global.bossmaxhp) * 100), 286, false)
}