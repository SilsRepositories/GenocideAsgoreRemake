hurtanim = 2
if (global.damage > 400000)
{
	instance_create_depth(-100, -100, -9003, obj_whiteflash)
	audio_play_sound(snd_heavydamage, 20, 0)
}
else
{
	audio_play_sound(snd_damage, 20, 0)
}