if (goalsize > (size + 0.1))
    size += 0.03 * (30 / room_speed)
if (goalsize < (size - 0.1))
    size -= 0.03 * (30 / room_speed)
image_xscale = size
image_yscale = size
image_alpha -= 0.01 * (30 / room_speed)
if (image_alpha < 0.01)
    instance_destroy()
siner += 1 * (30 / room_speed)
x += (sin((siner / gg)) * rr)
y += (cos((siner / gg)) * vv)