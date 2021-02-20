audio_stop_sound(pellet19)
flpellet = instance_create_depth(0, 0, -1000, obj_floweypellet)
pellets[global.pelletcount] = flpellet
with (flpellet)
{
	direction = 30 * (global.pelletcount + 1)
	distance = 110
	type = 3
}
global.pelletcount += 1
audio_play_sound(pellet19, 20, 0)
if (global.pelletcount < 12)
	alarm[1] = 3 * (room_speed / 30)