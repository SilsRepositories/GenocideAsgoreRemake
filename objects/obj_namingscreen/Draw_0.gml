alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
letter_gapx = 60
letter_gapy = 30
draw_set_font(fnt_determination)
if (global.gmenu == 2)
{
	if (keyboard_check_pressed(vk_left))
		letter -= 1
	if (keyboard_check_pressed(vk_right))
		letter += 1
	if (keyboard_check_pressed(vk_up))
		letter -= 6
	if (keyboard_check_pressed(vk_down))
		letter += 6
	if (letter < 1)
		letter = 1
	if (letter > 55)
		letter = 55
	for (var i = 1; i < 27; i++)
	{
		draw_set_color(c_white)
		shakefactorx = random_range(-1, 1)
		shakefactory = random_range(-1, 1)
		letter_x = 100 + (letter_gapx * i)
		letter_y = 90
		while (letter_x > 500)
		{
			letter_x -= 360
			letter_y += letter_gapy
		}
		draw_text(letter_x + shakefactorx, letter_y + shakefactory, string_char_at(alphabet, i))
		if (letter == i)
		{
			draw_set_color(c_red)
			chosenletterx = 100 + ((letter * letter_gapx) - 1)
			chosenlettery = 90
			while (chosenletterx > 500)
			{
				chosenletterx -= 360
				chosenlettery += letter_gapy
			}
			draw_text(chosenletterx + shakefactorx + 1, chosenlettery + shakefactory, string_char_at(alphabet, letter))
			global.gmenucoord = -1
			if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
			{
				if (string_length(global.name) < 6)
					global.name += string_char_at(alphabet, letter)
				else
				{
					global.name = string_copy(global.name, 1, 5)
					global.name += string_char_at(alphabet, letter)
				}
			}
		}
	}
	for (var i = 1; i < 27; i++)
	{
		draw_set_color(c_white)
		shakefactorx = random_range(-1, 1)
		shakefactory = random_range(-1, 1)
		letter_x = 100 + (letter_gapx * i)
		letter_y = 250
		while (letter_x > 500)
		{
			letter_x -= 360
			letter_y += letter_gapy
		}
		draw_text(letter_x + shakefactorx, letter_y + shakefactory, string_lower(string_char_at(alphabet, i)))
		_letter = (letter - 26)
		if (_letter > 0 && _letter == i)
		{
			draw_set_color(c_red)
			chosenletterx = 100 + ((_letter * letter_gapx) - 1)
			chosenlettery = 250
			while (chosenletterx > 500)
			{
				chosenletterx -= 360
				chosenlettery += letter_gapy
			}
			draw_text(chosenletterx + shakefactorx + 1, chosenlettery + shakefactory, string_lower(string_char_at(alphabet, _letter)))
			global.gmenucoord = -1
			if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter))
			{
				if (string_length(global.name) < 6)
					global.name += string_lower(string_char_at(alphabet, _letter))
				else
				{
					global.name = string_copy(global.name, 1, 5)
					global.name += string_lower(string_char_at(alphabet, _letter))
				}
			}
		}
	}
	draw_set_color(c_white)
	draw_text(105, 430, "Menu      Back      Confirm")
}
color = c_red
if (global.glasssoul == 1)
	color = c_aqua
if (letter > 52 && global.gmenu == 2)
	global.gmenucoord = (letter - 52) - 1
if (global.gmenu == 2)
{
	draw_sprite_ext(spr_heart_0, 0, 82 + (160 * global.gmenucoord), 440, 1, 1, 0, color, 1)
	nameyoffset = 0
	draw_text(140, 40, "Name:")
}
if (global.gmenu == 3)
{
	draw_set_color(c_white)
	shakefactorx = random_range(-1, 1)
	shakefactory = random_range(-1, 1)
	allow = 1
	mine = "Is this name correct?"
	if (string_lower(global.name) == "")
	{
		mine = "You must choose a name."
		allow = 0
	}
	if (string_lower(global.name) == "aaaaaa")
	{
		mine = "Not very creative...?"
		allow = 0
	}
	if (string_lower(global.name) == "aaron")
	{
		mine = "You can't flex when you\nkilled everyone."
		allow = 0
	}
	if (string_lower(global.name) == "asriel")
	{
		mine = "..."
		allow = 0
	}
	if (string_lower(global.name) == "asgore")
	{
		mine = "You STILL cannot."
		allow = 0
	}
	if (string_lower(global.name) == "alphy")
	{
		mine = "Umm..."
		allow = 1
	}
	if (string_lower(global.name) == "alphys")
	{
		mine = "D-don't do that, human."
		allow = 0
	}
	if (string_lower(global.name) == "bpants")
	{
		mine = "After what you did?\nI don't think so, kid."
		allow = 0
	}
	if (string_lower(global.name) == "bratty")
	{
		mine = "Like... OK, I guess?"
		allow = 1
	}
	if (string_lower(global.name) == "catty")
	{
		mine = "Bratty! Bratty!\nThat's my name..."
		allow = 1
	}
	if (string_lower(global.name) == "chara")
	{
		mine = "The true name."
		allow = 1
	}
	if (string_lower(global.name) == "flowey")
	{
		mine = "I already CHOSE that\nname."
		allow = 0
	}
	if (string_lower(global.name) == "gerson")
	{
		mine = "You? Use my name?\nNot today."
		allow = 0
	}
	if (string_lower(global.name) == "jerry")
	{
		mine = "Jerry."
		allow = 1
	}
	if (string_lower(global.name) == "merg")
	{
		mine = "The true cherry."
		allow = 1
	}
	if (string_lower(global.name) == "metta" || string_lower(global.name) == "mett" || string_lower(global.name) == "mtt")
	{
		mine = "OOOH! I'M SORRY, HUMAN,\nBUT YOU CANNOT DO THAT."
		allow = 0
	}
	if (string_lower(global.name) == "napsta" || string_lower(global.name) == "blook" || string_lower(global.name) == "blooky")
	{
		mine = "...........\n(They still have\nno power to stop you.)"
		allow = 1
	}
	if (string_lower(global.name) == "papyru")
	{
		mine = "I'LL STILL ALLOW IT!"
		allow = 1
	}
	if (string_lower(global.name) == "shyren")
	{
		mine = "..."
		allow = 1
	}
	if (string_lower(global.name) == "sans")
	{
		mine = "still nope."
		allow = 0
	}
	if (string_lower(global.name) == "temmie")
	{
		mine = "hOiVs!"
		allow = 0
	}
	if (string_lower(global.name) == "woshua")
	{
		mine = "It won't clean your\npathetic behavior."
		allow = 1
	}
	if (string_lower(global.name) == "gaster")
		game_restart()
	if (string_lower(global.name) == "toriel")
	{
		mine = "I think you should get\nyour own name, you psycho!"
		allow = 0
	}
	if (string_lower(global.name) == "undyne")
	{
		mine = "Sorry, I don't allow my name\nto be used by MURDERERS!"
		allow = 0
	}
	if (string_lower(global.name) == "silvur")
	{
		mine = "Nice try."
		allow = 0
	}
	if (string_lower(global.name) == "quick")
	{
		mine = "Nuh-uh."
		allow = 0
	}
	if (string_lower(global.name) == "quicks")
	{
		mine = "Pffft..."
		allow = 0
	}
	if (string_lower(global.name) == "qs")
	{
		mine = "You think you can get away\nwith it?"
		allow = 0
	}
	if (string_lower(global.name) == "qsv")
	{
		mine = "Imagine trying to impersonate\nsomeone."
		allow = 0
	}
	if (string_lower(global.name) == "qsilv")
	{
		mine = "Nope."
		allow = 0
	}
	if (string_lower(global.name) == "qsilvr")
	{
		mine = "Do not."
		allow = 0
	}
	if (string_lower(global.name) == "lexxy")
	{
		mine = "The true goddess."
		allow = 1
	}
	if (string_lower(global.name) == "harry")
	{
		mine = "The true god."
		allow = 1
	}
	if (string_lower(global.name) == "frisk")
	{
		mine = "WARNING: This name will do\nabsolutely nothing."
		allow = 1
	}
	if (string_lower(global.name) == "steven")
	{
		mine = "Terrible theorist."
		allow = 1
		global.lunaticmode = 1
		global.classicmode = 1
	}
	if (string_lower(global.name) == "saness" || string_lower(global.name) == "srpelo")
	{
		mine = "U WANNA HAV A\nBAD TOM?!?!!!1!"
		allow = 1
	}
	if (string_lower(global.name) == "murder" || string_lower(global.name) == "mercy")
	{
		mine = "...edgy."
		allow = 1
	}
	bannedwords[0] = "shit"
	bannedwords[1] = "fuck"
	bannedwords[2] = "nigger"
	bannedwords[2] = "nigga"
	bannedwords[3] = "boob"
	bannedwords[4] = "tit"
	bannedwords[5] = "vagina"
	bannedwords[6] = "cunt"
	bannedwords[7] = "bitch"
	bannedwords[8] = "twat"
	bannedwords[9] = "cock"
	hasswore = 0
	for (var k = 0; k < 10; k++)
	{
		if (string_pos(bannedwords[k], string_lower(global.name)) > 0)
			hasswore = 1
	}
	if (hasswore)
	{
		mine = "Do you really think you're\nfunny?"
		allow = 0
	}
	if (allow == 1)
	{
		draw_text(240, 260, "Yes\nNo")
		global.gmenulength = 2
	}
	else
	{
		draw_text(240, 260, "Back")
		global.gmenulength = 1
	}
	nameyoffset += 3 * (30 / room_speed)
	if (nameyoffset > 130)
		nameyoffset = 130
	draw_text(120, 40, mine)
	draw_sprite_ext(spr_heart_0, 0, 214, 269 + (32 * global.gmenucoord), 1, 1, 0, color, 1)
}
draw_text_transformed(225 + shakefactorx, 20 + shakefactory + nameyoffset, global.name, 2, 2, random_range(-1, 1))