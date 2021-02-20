if (global.gmenu < 2)
{
	draw_set_font(fnt_monsterfriend)
	draw_text(180, 14, "UNDERTALE:")
	draw_text(110, 50, "GENOCIDE ASGORE")
	draw_set_color(c_red)
	draw_text(230 + sin(siner) * 3, 98 + cos(siner) * 5, "R")
	draw_set_color(c_orange)
	draw_text(265 + sin(siner + 1) * 3, 98 + cos(siner + 1) * 5, "E")
	draw_set_color(c_yellow)
	draw_text(294 + sin(siner + 2) * 3, 98 + cos(siner + 2) * 5, "M")
	draw_set_color(c_green)
	draw_text(331 + sin(siner + 3) * 3, 98 + cos(siner + 3) * 5, "A")
	draw_set_color(c_blue)
	draw_text(361 + sin(siner + 4) * 3, 98 + cos(siner + 4) * 5, "K")
	draw_set_color(c_purple)
	draw_text(395 + sin(siner + 5) * 3, 98 + cos(siner + 5) * 5, "E")
	draw_set_color(c_white)
	draw_set_font(fnt_dotum)
	draw_text(496, 80, "v1.1.1")
	draw_text(10, 428, "Game by Quicksilvur\nBased on the fangame by Stryker\nUNDERTALE by Toby Fox")
}
siner += 0.2 * (30 / room_speed)
draw_set_font(fnt_determination)
draw_sprite_ext(spr_asgore_brandish_0, 0, 120, 100, 4, 4, 0, c_white, 0.1)
if (global.gmenu == -2)
{
	c = "ON"
	if (global.glasssoul == 0)
		c = "OFF"
	d = "ON"
	if (global.fpsmode == 0)
		d = "OFF"
	e = "ON"
	if (global.survival == 0)
		e = "OFF"
	global.gmenulength = 4
	draw_set_color(c_white)
	draw_text(90, 200, "NO HIT MODE: " + string(c))
	draw_text(90, 232, "60FPS MODE: " + string(d))
	draw_text(90, 264, "SURVIVAL MODE: " + string(e))
	draw_text(90, 296, "BACK")
}
if (global.gmenu == -1)
{
	global.gmenulength = 4
	draw_set_color(c_white)
	draw_text(90, 200, "MASTER VOLUME: " + string(round(global.MASTER_VOLUME * 100)))
	draw_text(90, 232, "MUSIC VOLUME: " + string(round(global.MUSIC_VOLUME * 100)))
	draw_text(90, 264, "SOUND VOLUME: " + string(round(global.SOUND_VOLUME * 100)))
	draw_text(90, 296, "BACK")
	ini_open("undertale.ini")
	ini_write_real("General", "F", global.MASTER_VOLUME)
	ini_write_real("General", "G", global.MUSIC_VOLUME)
	ini_write_real("General", "H", global.SOUND_VOLUME)
	ini_close()
	if (keyboard_check(vk_left))
	{
		switch (global.gmenucoord)
		{
			case 0:
				global.MASTER_VOLUME -= 0.01
				if (global.MASTER_VOLUME < 0)
					global.MASTER_VOLUME = 0
				break;
			case 1:
				global.MUSIC_VOLUME -= 0.01
				if (global.MUSIC_VOLUME < 0)
					global.MUSIC_VOLUME = 0
				break;
			case 2:
				global.SOUND_VOLUME -= 0.01
				if (global.SOUND_VOLUME < 0)
					global.SOUND_VOLUME = 0
				break;
		}
	}
	if (keyboard_check(vk_right))
	{
		switch (global.gmenucoord)
		{
			case 0:
				global.MASTER_VOLUME += 0.01
				if (global.MASTER_VOLUME > 1)
					global.MASTER_VOLUME = 1
				break;
			case 1:
				global.MUSIC_VOLUME += 0.01
				if (global.MUSIC_VOLUME > 1)
					global.MUSIC_VOLUME = 1
				break;
			case 2:
				global.SOUND_VOLUME += 0.01
				if (global.SOUND_VOLUME > 1)
					global.SOUND_VOLUME = 1
				break;
		}
	}
}
if (global.gmenu == -0.5)
{
	draw_text(90, 168, "RESET?\nYES\nNO")
	global.gmenulength = 2
}
if (global.gmenu == 0)
{
	if (global.name == "")
	{
		draw_text(90, 200, "PLAY\nSETTINGS\nQUIT")
		global.gmenulength = 3
	}
	else
	{
		draw_text(90, 200, "PLAY\nRESET\nSETTINGS\nQUIT")
		global.gmenulength = 4
	}
}
if (global.gmenu == 1)
{
	global.gmenulength = 6
	a = "ON"
	if (global.classicmode == 0)
		a = "OFF"
	a2 = "ON"
	if (global.lunaticmode == 0)
		a2 = "OFF"
	b = "ON"
	if (!window_get_fullscreen())
		b = "OFF"
	draw_set_color(c_white)
	draw_text(90, 200, "CLASSIC MODE: " + string(a))
	draw_text(90, 232, "LUNATIC MODE: " + string(a2))
	draw_text(90, 264, "FULLSCREEN MODE: " + string(b))
	draw_text(90, 296, "EXTRAS")
	draw_text(90, 328, "VOLUME SETTINGS")
	draw_text(90, 360, "BACK")
}
draw_set_color(c_dkgray)
if (global.gmenu == 0)
{
	if (global.name == "")
	{
		if (global.gmenucoord == 0)
			draw_text(90, 360, "Let's finish this.")
		if (global.gmenucoord == 1)
			draw_text(90, 360, "Maybe we should spice things\nup before we taste it.")
		if (global.gmenucoord == 2)
			draw_text(90, 360, "Live to fight another day.")
	}
	else
	{
		if (global.gmenucoord == 0)
			draw_text(90, 360, "Let's finish this.")
		if (global.gmenucoord == 1)
			draw_text(90, 360, "Go back...")
		if (global.gmenucoord == 2)
			draw_text(90, 360, "Maybe we should spice things\nup before we taste it.")
		if (global.gmenucoord == 3)
			draw_text(90, 360, "Live to fight another day.")	
	}
}
draw_set_color(c_white)
color = c_red
if (global.glasssoul == 1)
	color = c_aqua
if (global.gmenu != 2)
{
	if (global.gmenu < 2)
		draw_sprite_ext(spr_heart_0, 0, 65, 208 + (32 * global.gmenucoord), 1, 1, 0, color, 1)
	if (keyboard_check_pressed(vk_up))
	{
		global.gmenucoord -= 1
		audio_play_sound(snd_menumov, 20, 0)
		if (global.gmenucoord < 0)
			global.gmenucoord = (global.gmenulength - 1)
	}
	if (keyboard_check_pressed(vk_down))
	{
		global.gmenucoord += 1
		audio_play_sound(snd_menumov, 20, 0)
		if (global.gmenucoord > (global.gmenulength - 1))
			global.gmenucoord = 0
	}
	audio_sound_gain(snd_menumov, global.SOUND_VOLUME, 0)
}
if (global.gmenu < 2)
{
	ini_open("undertale.ini")
	myrank = ini_read_real("General", "C", 0)
	draw_sprite_ext(spr_medal, myrank, 570, 410, 4, 4, 0, c_white, 1)
	draw_sprite_ext(spr_medal_glow, myrank, 538, 378, 4, 4, 0, c_white, abs(sin(siner / 8)) * (myrank / 7))
}
if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
{
	audio_play_sound(snd_select, 20, 0)
	audio_sound_gain(snd_select, global.SOUND_VOLUME, 0)
	if (global.gmenu == -2)
	{
		if (global.gmenucoord == 0)
		{
			if (global.glasssoul)
				global.glasssoul = 0
			else
				global.glasssoul = 1
			exit
		}
		if (global.gmenucoord == 1)
		{
			if (global.fpsmode)
				global.fpsmode = 0
			else
				global.fpsmode = 1
			exit
		}
		if (global.gmenucoord == 2)
		{
			if (global.survival)
				global.survival = 0
			else
				global.survival = 1
			exit
		}
		if (global.gmenucoord == 3)
		{
			global.gmenu = 1
			global.gmenucoord = 0
			exit
		}
	}
	if (global.gmenu == -1)
	{
		if (global.gmenucoord == 3)
		{
			global.gmenu = 1
			global.gmenucoord = 0
			exit
		}
	}
	if (global.gmenu == -0.5)
	{
		if (global.gmenucoord == 0)
		{
			ini_open("undertale.ini")
			global.name = ""
			global.deaths = 0
			global.gmenu = 0
			ini_write_string("General", "A", "")
			ini_write_real("General", "B", 0)
			ini_write_real("General", "C", 0)
			ini_write_real("General", "D", 0)
			ini_write_real("General", "E", 0)
			ini_close()
			audio_play_sound(snd_mysterygo, 20, false)
			exit
		}
		if (global.gmenucoord == 1)
		{
			global.gmenu = 0
			global.gmenucoord = 0
			exit
		}
	}
	if (global.gmenu == 0)
	{
		if (global.name != "")
		{
			if (global.gmenucoord == 0)
			{
				audio_stop_sound(mus_prebattle1)
				room_goto(room_trueintro)
				global.gmenucoord = 0
				exit
			}
			if (global.gmenucoord == 1)
			{
				global.gmenu = -0.5
				global.gmenucoord = 0
				exit
			}
			if (global.gmenucoord == 2)
			{
				global.gmenu = 1
				global.gmenucoord = 0
				exit
			}
			if (global.gmenucoord == 3)
			{
				game_end()
			}
		}
		else
		{
			if (global.gmenucoord == 0)
			{
				global.gmenu = 2
				global.gmenucoord = 0
				exit
			}
			if (global.gmenucoord == 1)
			{
				global.gmenu = 1
				global.gmenucoord = 0
				exit
			}
			if (global.gmenucoord == 2)
			{
				game_end()
			}
		}
	}
	if (global.gmenu == 1)
	{
		if (global.gmenucoord == 0)
		{
			if (global.classicmode == 0)
				global.classicmode = 1
			else
				global.classicmode = 0
			exit
		}
		if (global.gmenucoord == 1)
		{
			if (global.lunaticmode == 0)
				global.lunaticmode = 1
			else
				global.lunaticmode = 0
			exit
		}
		if (global.gmenucoord == 2)
		{
			if (window_get_fullscreen())
				window_set_fullscreen(false)
			else
				window_set_fullscreen(true)
			exit
		}
		if (global.gmenucoord == 3)
		{
			global.gmenu = -2
			global.gmenucoord = 0
			exit
		}
		if (global.gmenucoord == 4)
		{
			global.gmenu = -1
			global.gmenucoord = 0
			exit
		}
		if (global.gmenucoord == 5)
		{
			global.gmenu = 0
			global.gmenucoord = 0
			exit
		}
	}
	if (global.gmenu == 2)
	{
		if (global.gmenucoord == 0)
		{
			global.gmenucoord = 0
			global.gmenu = 0
			global.name = ""
			exit
		}
		if (global.gmenucoord == 1)
		{
			global.gmenucoord = 0
			global.name = string_copy(global.name, 1, string_length(global.name) - 1)
			exit
		}
		if (global.gmenucoord == 2)
		{
			global.gmenucoord = 0
			global.gmenu = 3
			exit
		}
	}
	if (global.gmenu == 3)
	{
		if (global.gmenucoord == 0)
		{
			if (global.gmenulength == 2)
			{
				ini_open("undertale.ini")
				ini_write_string("General", "A", global.name)
				ini_close()
				audio_stop_sound(mus_prebattle1)
				room_goto(room_trueintro)
			}
			else
			{
				global.gmenu = 2
				global.gmenucoord = 0
			}
			exit
		}
		if (global.gmenucoord == 1)
		{
			global.gmenu = 2
			global.gmenucoord = 0
			exit
		}
	}
	global.gmenucoord = 0
}
audio_sound_gain(mus_prebattle1, global.MUSIC_VOLUME, 0)
if (global.gmenu == 1 || global.gmenu == 2)
{
	if (keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_rshift))
	{
		if (global.gmenu == 2)
			global.name = ""
		global.gmenu = 0
		global.gmenucoord = 0
	}
}
if (global.gmenu == -1 || global.gmenu == -2)
{
	if (keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_rshift))
	{
		global.gmenu = 1
		global.gmenucoord = 0
	}
}
if (global.gmenu == 3)
{
	if (keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_rshift))
	{
		global.gmenu = 2
		global.gmenucoord = 0
	}
}
if (global.gmenu > 1)
	obj_namingscreen.visible = true
else
	obj_namingscreen.visible = false