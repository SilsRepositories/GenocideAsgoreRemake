wavefire = instance_create_depth(320 + sin(siner) * 20, 100 + cos(siner) * 8, -101, obj_wavefire)
if (wavefireshot == 3 || (wavefireshot == 2 && irandom_range(1, 4) == 1))
{
	if (dir == 1)
	{
		dir = -1
	}
	else
	{
		dir = 1
	}
	wavefireshot = 0
}
wavefire.image_xscale = 0.96
wavefire.image_yscale = 0.96
wavefire.dir = dir
wavefire.siner = siner / 3
wavefireshot += 1