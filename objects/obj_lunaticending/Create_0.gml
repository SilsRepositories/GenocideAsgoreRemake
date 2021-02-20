audio_play_sound(snd_heavydamage_earth, 20, 0)
audio_sound_gain(snd_heavydamage_earth, global.SOUND_VOLUME, 0)
global.bosshp = 0
global.bossmaxhp = 0
dmg = instance_create_depth(140, y + 200, -100000, obj_damagewriter)
dmg.damage = 999999999999999
dmg.apparenthp = 0
dmg.alarm[0] = 180
alarm[0] = 300
for (var i = 0; i < 60; i++)
{
	dust = instance_create_depth(random(640), random(480), -10, obj_dustparticle)
	dust.image_xscale = random_range(1, 5)
	dust.image_yscale = random_range(1, 5)
	dust.vspeed = random(-8)
	dust2 = instance_create_depth(random(640), random(480), -10, obj_dustparticle)
	dust2.image_xscale = random_range(1, 5)
	dust2.image_yscale = random_range(1, 5)
	dust2.vspeed = random(-8)
	dust3 = instance_create_depth(random(640), random(480), -10, obj_dustparticle)
	dust3.image_xscale = random_range(1, 5)
	dust3.image_yscale = random_range(1, 5)
	dust3.vspeed = random(-8)
	dust4 = instance_create_depth(random(640), random(480), -10, obj_dustparticle)
	dust4.image_xscale = random_range(1, 5)
	dust4.image_yscale = random_range(1, 5)
	dust4.vspeed = random(-8)
	dust5 = instance_create_depth(random(640), random(480), -10, obj_dustparticle)
	dust5.image_xscale = random_range(1, 5)
	dust5.image_yscale = random_range(1, 5)
	dust5.vspeed = random(-8)
}