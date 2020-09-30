level = 0
sewerrank = 0
timerank = 0
castlerank = 0
cloudsrank = 0
ini_open("saveData.ini")
sewercollect = ini_read_string("Points", "sewer", "none")
timecollect = ini_read_string("Points", "time", "none")
castlecollect = ini_read_string("Points", "castle", "none")
cloudscollect = ini_read_string("Points", "clouds", "none")
timeleft = ini_read_string("TimeChallenge", "time", "none")
ini_close()