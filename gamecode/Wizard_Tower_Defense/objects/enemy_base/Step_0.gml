var target = wizardTower_OBJ

var slow = 1
for (var i = 0; i < activeDebuffs.length; i++) {
    try {
        if (activeDebuffs[i].hasSlow()) {
            slow += activeDebuffs[i].strength
        }
    }
}

if (target != none) {
    move_towards_point(target.x, target.y, speed * 1/slow); // 4 pixels per step
}