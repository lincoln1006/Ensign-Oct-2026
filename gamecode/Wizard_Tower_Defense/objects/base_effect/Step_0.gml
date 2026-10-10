life -= 1
if  (life <= 0 || instance_exists(enemy)) {
	instance_destroy(id)
}