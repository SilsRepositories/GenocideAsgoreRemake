mys += mysadd
hl = instance_create_depth(x, y, -101, obj_sinefire_asghelix)
hl.s = mys
hl.sf = mysf
hl.sv = mysv
hl.vspeed = (5.5 + selfspeed) * (30 / room_speed)
hl2 = instance_create_depth(x, y, -101, obj_sinefire_asghelix)
hl2.s = mys
hl2.sf = mysf
hl2.sv = (-mysv)
hl2.vspeed = (5.5 + selfspeed2) * (30 / room_speed)
alarm[0] = 2 * (room_speed / 30)
count += 1
if (count > 15)
    instance_destroy()