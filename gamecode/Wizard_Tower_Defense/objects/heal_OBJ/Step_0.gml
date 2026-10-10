timer += 1;
if timer >= 5{
	life -= 1;
	timer = 0
}
if life <= 0{
	instance_destroy(id);
}