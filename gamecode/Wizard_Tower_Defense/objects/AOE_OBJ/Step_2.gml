if life < 0{
	instance_destroy(id);
}
timer -= 1
if timer <= 0{
	timer = 4;
	life -= 1;
}