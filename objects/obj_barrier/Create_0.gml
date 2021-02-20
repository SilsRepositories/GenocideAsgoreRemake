siner = 0
col = 0
depth = 20
ini_open("undertale.ini")
global.h_nhc_thistime = 0
global.h_wave_thistime = 0
global.h_nhc = ini_read_real("General", "I", 0)
global.h_wave = ini_read_real("General", "J", 0)
global.h_time = ini_read_real("General", "K", 0)
ini_close()