if (wave == 1 || wave == 9 || (wave == 6 && global.lunaticmode == 1))
{
	draw_set_alpha(blackalpha)
	draw_set_color(c_black)
	draw_rectangle(-30, -30, 670, 510, false)
	blackalpha += 0.025 * (30 / room_speed)
	if (blackalpha > 0.25)
		blackalpha = 0.25
}