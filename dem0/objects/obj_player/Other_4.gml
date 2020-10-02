if global.newdoors = 2
{
if (targetDoor == "A")
{
    if (hallway == 1)
        x = (obj_doorA.x + 16 * hallwaydirection)
    else if (box == 1)
        x = (obj_doorA.x + 32)
    else
        x = (obj_doorA.x + 16)
    y = (obj_doorA.y - 14)
    hallway = 0
    box = 0
}
if (targetDoor == "B")
{
    if (hallway == 1)
        x = (obj_doorB.x + 16 * hallwaydirection)
    else if (box == 1)
        x = (obj_doorB.x + 32)
    else
        x = (obj_doorB.x + 16)
    y = (obj_doorB.y - 14)
    hallway = 0
    box = 0
}
if (targetDoor == "C")
{
    if (hallway == 1)
        x = (obj_doorC.x + 16 * hallwaydirection)
    else if (box == 1)
        x = (obj_doorC.x + 32)
    else
        x = (obj_doorC.x + 16)
    y = (obj_doorC.y - 14)
    hallway = 0
    box = 0
}
if (targetDoor == "D")
{
    if (hallway == 1)
        x = (obj_doorD.x + 16 * hallwaydirection)
    else if (box == 1)
        x = (obj_doorD.x + 32)
    else
        x = (obj_doorD.x + 16)
    y = (obj_doorD.y - 14)
    hallway = 0
    box = 0
}
if (targetDoor == "E")
{
    if (hallway == 1)
        x = (obj_doorE.x + 16 * hallwaydirection)
    else if (box == 1)
        x = (obj_doorE.x + 32)
    else
        x = (obj_doorE.x + 16)
    y = (obj_doorE.y - 14)
    hallway = 0
    box = 0
}
}