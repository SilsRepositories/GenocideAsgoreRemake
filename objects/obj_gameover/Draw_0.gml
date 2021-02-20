draw_self()
if (con == 6)
{
	draw_set_font(fnt_determination)
	global.gmenulength = 2
	offset = 0
	if (global.survival)
		offset = 100
	draw_text(120, 339 + offset, "Retry                Menu")
	if (global.survival)
	{
		if (global.time > global.h_time)
		{
			global.h_time = global.time
			ini_open("undertale.ini")
			ini_write_real("General", "K", global.h_time)
			ini_close()
		}
		timeS = string(global.time % 60)
		if (timeS < 10)
			timeS = "0" + timeS
		timeM = string(floor(global.time / 60))
		if (timeM < 10)
			timeM = "0" + timeM
		m_Time = timeM + ":" + timeS
		
		h_timeS = string(global.h_time % 60)
		if (h_timeS < 10)
			h_timeS = "0" + h_timeS
		h_timeM = string(floor(global.h_time / 60))
		if (h_timeM < 10)
			h_timeM = "0" + h_timeM
		m_Time2 = h_timeM + ":" + h_timeS
		draw_text(120, 233, "Your Time: " + m_Time)
		draw_text(120, 258, "Best Time: " + m_Time2)
		
		draw_text(120, 293, "Your Highest NHC: " + string(global.h_nhc_thistime))
		draw_text(120, 318, "Best NHC: " + string(global.h_nhc))
		
		draw_text(120, 353, "Waves Survived: " + string(global.h_wave_thistime))
		draw_text(120, 378, "Most Waves Survived: " + string(global.h_wave))
	}
	color = c_red
	if (global.glasssoul == 1)
		color = c_aqua
	draw_sprite_ext(spr_heart_0, 0, 95 + (335 * global.gmenucoord), 348 + offset, 1, 1, 0, color, 1)
	if (keyboard_check_pressed(vk_left))
	{
		global.gmenucoord -= 1
		audio_play_sound(snd_menumov, 20, 0)
		if (global.gmenucoord < 0)
			global.gmenucoord = (global.gmenulength - 1)
	}
	if (keyboard_check_pressed(vk_right))
	{
		global.gmenucoord += 1
		audio_play_sound(snd_menumov, 20, 0)
		if (global.gmenucoord > (global.gmenulength - 1))
			global.gmenucoord = 0
	}
	audio_sound_gain(snd_menumov, global.SOUND_VOLUME, 0)
	if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
	{
		audio_play_sound(snd_select, 20, 0)
		if (global.gmenucoord == 0)
		{
			audio_stop_sound(mus_gameover)
			audio_stop_sound(mus_yourbestfriend_3)
			room_goto(room_asgoreintro)
		}
		if (global.gmenucoord == 1)
		{
			audio_stop_sound(mus_gameover)
			audio_stop_sound(mus_yourbestfriend_3)
			room_goto(room_menu)
		}
	}
}