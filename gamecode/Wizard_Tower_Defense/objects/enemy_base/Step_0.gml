var target = wizardTower_OBJ

var slow = 1
if array_length(activeDebuffs) > 0{
	for (var i = 0; i < array_length(activeDebuffs); i++) {
	    try {
	        if (activeDebuffs[i].hasSlow()) {
	            slow += activeDebuffs[i].strength
	        }
	    }
	}
}

if (target != noone) {
    move_towards_point(target.x, target.y, speed * 1/slow); // 4 pixels per step
}