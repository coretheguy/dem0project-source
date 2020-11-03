with obj_player
{
	if place_meeting(x, y + 1, other.id)
		x += 3
}

with obj_baddie
{
	if place_meeting(x, y + 1, other.id)
		x += 3
}

with obj_pizzaball
{
	if place_meeting(x, y + 1, other.id)
		x += 3
}