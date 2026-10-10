for (var i = 0; i < array_length(enemiesEffected); i ++){
	if (instance_exists(enemiesEffected[i])){
		enemiesEffected[i].speed = enemiesEffected[i].baseSpeed;
	}
}