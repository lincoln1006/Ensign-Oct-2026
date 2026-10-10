for (var i = 0; i < array_length(enemiesPushed); i++){
	if (instance_exists(enemiesPushed[i])){
		enemiesPushed[i].speed = enemiesPushed[i].baseSpeed;
	}
}