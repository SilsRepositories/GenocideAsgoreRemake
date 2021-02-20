draw_set_font(fnt_determination)
if (image_xscale == 0.5)
	draw_set_font(fnt_dotum)
draw_set_color(color)
while (writing)
{
	if (string_char_at(text, char) == "") {
		writing = false
		if (string_char_at(text, char + 1) == "%" && string_char_at(text, char + 2) == "%")
			doesdespawn = true
		if (string_char_at(text, char + 1) == "R")
		{
			writing = true
			color = c_red
			char += 2
		}
		draw_text(x, y, str)
		exit
	}
	if (string_char_at(text, char) == "&") {
		str = str + "\n"
		char++
		draw_text(x, y, str)
		exit
	}
	str = str + string_char_at(text, char)
	char++
}
draw_text(x, y, str)