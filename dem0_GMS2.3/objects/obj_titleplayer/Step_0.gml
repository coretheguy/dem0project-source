if !instance_exists(obj_scootereffect)
	instance_create(x - 20, y, obj_scootereffect)

if obj_menuselection.selectedplay = 1
{
	hsp += 0.5
}
scr_collideandmove()