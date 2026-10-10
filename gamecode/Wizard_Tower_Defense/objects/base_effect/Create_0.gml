function onDeath() {
	return false
}
function onHurt(damage) {
	return false
}
function hasSlow() {
	return false
}
function onStep() {
	return false
}
array_push(enemy.activeDebuffs, self.id);
/*function onHurt(damage) {
	if (damage == 0) {
		return damage * 1.5
	} else {
		return false
	}
}*/