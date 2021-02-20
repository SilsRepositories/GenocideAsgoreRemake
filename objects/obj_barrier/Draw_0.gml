col += 1
if (col > 255)
	col = 0
color = make_color_hsv(col, 233, 200)
siner += 0.025
if (!obj_rainbowbg.visible)
{
	draw_sprite_ext(background_block, 0, 0, (sin(siner * 1.65) * 10), 1, 1, 0, color, 1)
	draw_sprite_ext(background_block, 0, 540, (sin((siner * 1.65) + 5) * 10), 1, 1, 0, color, 1)
}
// draw_sprite_ext( sprite, subimg, x, y, xscale, yscale, rot, colour, alpha );
if (global.survival)
{
	if (global.nhc > global.h_nhc_thistime)
		global.h_nhc_thistime = global.nhc
	if (global.wave > global.h_wave_thistime)
		global.h_wave_thistime = global.wave
	if (global.nhc > global.h_nhc)
	{
		global.h_nhc = global.nhc
		ini_open("undertale.ini")
		ini_write_real("General", "I", global.nhc)
		ini_close()
	}
	if (global.wave > global.h_wave)
	{
		global.h_wave = global.wave
		ini_open("undertale.ini")
		ini_write_real("General", "J", global.wave)
		ini_close()
	}
	for (var i = 0; i < 2; i++)
	{
		depth = -9
		if (i == 0)
			draw_set_color(c_black)
		if (i == 1)
			draw_set_color(c_white)
		draw_set_font(fnt_dotum)
		h_timeS = string(global.h_time % 60)
		h_timeM = string(floor(global.h_time / 60))
		if (h_timeS < 10)
			h_timeS = "0" + h_timeS
		if (h_timeM < 10)
			h_timeM = "0" + h_timeM
		draw_text(10 - (i * 2), 430 - (i * 2), "TIME (Highest: " + (h_timeM + ":" + h_timeS) + ")")
		if (i == 0)
			global.time += (1 / room_speed)
		timeS = string(global.time % 60)
		timeM = string(floor(global.time / 60))
		if (timeS < 10)
			timeS = "0" + timeS
		if (timeM < 10)
			timeM = "0" + timeM
		draw_set_font(fnt_dtsans)
		draw_text(10 - (i * 2), 438 - (i * 2), timeM + ":" + timeS)

		draw_set_font(fnt_dotum)
		draw_text(240 - (i * 2), 430 - (i * 2), "NHC (Highest: " + string(global.h_nhc) + ")")
		draw_set_font(fnt_dtsans)
		draw_text(240 - (i * 2), 438 - (i * 2), string(global.nhc))

		draw_set_font(fnt_dotum)
		draw_text(420 - (i * 2), 430 - (i * 2), "WAVE (Highest: " + string(global.h_wave) + ")")
		draw_set_font(fnt_dtsans)
		draw_text(420 - (i * 2), 438 - (i * 2), string(global.wave))
	}
	depth = -20
}