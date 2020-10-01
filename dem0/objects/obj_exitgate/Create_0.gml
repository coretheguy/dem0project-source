image_speed = 0
global.timerank = "none" //in case it crashes...
rank = "none" // also prevents a crash
ini_open("saveData.ini")
global.sewerhighscore = ini_read_string("Points", "sewer","none")
global.castlehighscore = ini_read_string("Points", "castle","none")
global.timehighscore = ini_read_string("Points", "time","none")
global.timehighscore2= ini_read_string("TimeChallenge", "time","none")
global.cloudshighscore = ini_read_string("Points", "clouds","none")
global.volcanohighscore = ini_read_string("Points", "volcano","none")
ini_close()