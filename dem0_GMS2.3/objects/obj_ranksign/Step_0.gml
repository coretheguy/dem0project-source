if level = "sewer"
{
ini_open("saveData.ini")
sewerrank = ini_read_string("Ranks", "sewer", "none")
ini_close()
if (sewerrank == "none")
    visible = 0
else
    visible = 1
if (sewerrank == "s")
    image_index = 0
if (sewerrank == "a")
    image_index = 1
if (sewerrank == "b")
    image_index = 2
if (sewerrank == "c")
    image_index = 3
if (sewerrank == "d")
    image_index = 4
}
if level = "time"
{
ini_open("saveData.ini")
timerank = ini_read_string("Ranks", "time", "none")
ini_close()
if (timerank == "none")
    visible = 0
else
    visible = 1
if (timerank == "s")
    image_index = 0
if (timerank == "a")
    image_index = 1
if (timerank == "b")
    image_index = 2
if (timerank == "c")
    image_index = 3
if (timerank == "d")
    image_index = 4
}
if level = "castle"
{
ini_open("saveData.ini")
castlerank = ini_read_string("Ranks", "castle", "none")
ini_close()
if (castlerank == "none")
    visible = 0
else
    visible = 1
if (castlerank == "s")
    image_index = 0
if (castlerank == "a")
    image_index = 1
if (castlerank == "b")
    image_index = 2
if (castlerank == "c")
    image_index = 3
if (castlerank == "d")
    image_index = 4
}
if level = "clouds"
{
ini_open("saveData.ini")
cloudsrank = ini_read_string("Ranks", "clouds", "none")
ini_close()
if (cloudsrank == "none")
    visible = 0
else
    visible = 1
if (cloudsrank == "s")
    image_index = 0
if (cloudsrank == "a")
    image_index = 1
if (cloudsrank == "b")
    image_index = 2
if (cloudsrank == "c")
    image_index = 3
if (cloudsrank == "d")
    image_index = 4
}