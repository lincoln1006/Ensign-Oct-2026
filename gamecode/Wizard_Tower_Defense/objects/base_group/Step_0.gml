if (timer <= 0) {
	show_debug_message(array_length(enemies))
	show_debug_message(array_length(enemies[spawnIndex]))
	spawnNext(enemies[spawnIndex][0])
	timer = enemies[spawnIndex][1]
	spawnIndex += 1
	if (spawnIndex >= array_length(enemies)) {
		instance_destroy(id)
	}
}
timer -= 1