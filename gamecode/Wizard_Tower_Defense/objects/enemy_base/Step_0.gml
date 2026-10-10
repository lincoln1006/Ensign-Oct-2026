var target = wizardTower_OBJ

var slow = 1
show_debug_message(activeDebuffs);
for (var i = 0; i < array_length(activeDebuffs); i++) {
	show_debug_message(instance_exists(activeDebuffs[i]));
	if instance_exists(activeDebuffs[i]){
		print("effect ticked");
		try {
			if (activeDebuffs[i].hasSlow()) {
			    slow += activeDebuffs[i].strength
			}
		}
		try {
			print("debuff ticked");
		    activeDebuffs[i].onTick()
			
		}
	}
}


if (target != noone) {
    move_towards_point(target.x, target.y, speed * 1/slow); // 4 pixels per step
}