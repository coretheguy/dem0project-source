image_speed = 0
targetDoor = "A"

global.timerank = "none" //in case it crashes...
rank = "none" // also prevents a crash
ini_open("saveData.ini")
global.sewerhighscore = ini_read_string("Points", "sewer", 0)
global.castlehighscore = ini_read_string("Points", "castle", 0)
global.timehighscore = ini_read_string("Points", "time", 0)
global.timehighscore2= ini_read_string("TimeChallenge", "time", 0)
global.cloudshighscore = ini_read_string("Points", "clouds", 0)
global.volcanohighscore = ini_read_string("Points", "volcano", 0)
ini_close()