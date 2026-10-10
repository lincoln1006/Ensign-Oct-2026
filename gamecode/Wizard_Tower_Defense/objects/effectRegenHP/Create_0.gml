// Inherit the parent event
event_inherited();

function onTick() {
	enemy.currentHP += strength
	if (enemy.currentHP > enemy.maxHP) {
		enemy.currentHP = enemy.maxHP
	}
}