if (reg == 0)
{
	apparenthp_next = apparenthp - damage
	reg = 1
}
draw_set_alpha(1)
draw_set_font(fnt_damage)
if (damage < 0)
	damage = 0
damage = round(damage)
x = 320 - (30 * (string_length(string(damage)) / 2))
draw_set_color(c_black)
if (damage == 0)
{
	draw_text(x - 2, y, "MISS")
	draw_text(x - 2, y, "MISS")
	draw_text(x, y + 2, "MISS")
	draw_text(x, y - 2, "MISS")
	draw_text(x - 2, y + 2, "MISS")
	draw_text(x - 2, y - 2, "MISS")
	draw_text(x + 2, y + 2, "MISS")
	draw_text(x + 2, y - 2, "MISS")
	draw_set_color(c_ltgrey)
	draw_text(x, y, "MISS")
}
else
{
	draw_text(x - 2, y, string(damage))
	draw_text(x - 2, y, string(damage))
	draw_text(x, y + 2, string(damage))
	draw_text(x, y - 2, string(damage))
	draw_text(x - 2, y + 2, string(damage))
	draw_text(x - 2, y - 2, string(damage))
	draw_text(x + 2, y + 2, string(damage))
	draw_text(x + 2, y - 2, string(damage))
	draw_set_color(c_red)
	draw_text(x, y, string(damage))
}
siner += 0.1 * (30 / room_speed)
if (damage == 0)
	siner = 0
y = (basey - (sin(siner) * 10))
if (y > basey)
{
	siner = 4
	y = basey
}
if (damage > 0)
{
	apparenthp -= (damage / 18) * (30 / room_speed)
	if (apparenthp < apparenthp_next)
		apparenthp = apparenthp_next
	draw_healthbar(150, basey + 34, 490, basey + 45, (apparenthp / global.bossmaxhp) * 100, c_dkgray, c_lime, c_lime, 0, true, true)	
}