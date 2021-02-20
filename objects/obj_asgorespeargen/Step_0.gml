var i;
if (con == 0)
{
	for (i = 0; i < spearmax; i++) {
		spears[i] = choose(0, 1)	
	}
	spears[i + 1] = 2
	con = 1	
	alarm[0] = 30 * (room_speed / 30)
}
if (con == 2)
{
	if (spearpreviews >= spearmax)
	{
		alarm[1] = -1
		alarm[0] = 15 * (room_speed / 30)
		con = 3
	}
	else if (alarm[1] <= 0)
	{
		alarm[1] = 7 * (room_speed / 30)
		if (global.lunaticmode == 1)
			alarm[1] = 5 * (room_speed / 30)
	}
}
if (con == 4)
{
	spearpreviews = 0
	if (spears[0] == 0)
		color = $FFA914
	else
		color = c_orange
	alarm[0] = 10 * (room_speed / 30)
	image_index = 1
	con = 5
}
if (con == 6)
{
	if (alarm[2] <= 0)
	{
		if (spearcon < 6)
			alarm[2] = 1 * (room_speed / 30)
		else
			alarm[2] = 2 * (room_speed / 30)
	}
	if (!turnback)
		image_index = (1 + spearcon)
	else
		image_index = (9 - spearcon)
}