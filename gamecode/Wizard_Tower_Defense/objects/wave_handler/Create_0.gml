possible_enemies = [heavy_group, mixed_group, swarm_group, big_group]

timer = 0
this_group = instance_create_layer(0, 0, "Instances", possible_enemies[irandom(array_length(possible_enemies) - 1)], {baseAngle: 90});
next_group = instance_create_layer(0, 0, "Instances", possible_enemies[irandom(array_length(possible_enemies) - 1)], {baseAngle: 90});


function timer_out() {
	timer = floor((this_group.value + next_group.value) * 30)
	spawn_location = irandom(359)
	this_group.start = true
	select_new_group()
}

function select_new_group() {
	this_group = next_group
	next_group = instance_create_layer(0, 0, "Instances", possible_enemies[irandom(array_length(possible_enemies) - 1)], {baseAngle: spawn_location});
}