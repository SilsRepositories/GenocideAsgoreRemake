if (firespawned < 9)
{
	fires[firespawned] = instance_create_depth(x + sprite_width / 2, y + sprite_height / 2, -101, obj_fire)
	fires[firespawned].image_xscale = 2
	fires[firespawned].image_yscale = 2
	firespawned += 1
}
alarm[0] = interval