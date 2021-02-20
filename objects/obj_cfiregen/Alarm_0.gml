choseang = random(360)
choseangspeed = choose(-3, 3) * (30 / room_speed)
i = 0
repeat (33)
{
    cc = instance_create_depth(320, 294, -101, obj_cfire)
    cc.ang = (choseang + (i * 8))
    cc.rspeed = 6 * (30 / room_speed)
    cc.r = 300
	if (global.lunaticmode == 1)
		cc.r = 330
    cc.angspeed = choseangspeed
	if (i == 0)
		cc.isfirst = true
    i += 1
}
alarm[0] = 25 * (room_speed / 30)