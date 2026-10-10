// Inherit the parent event
event_inherited();

function onTick() {
	enemy.currentHP -= strength
	enemy.onHurt()
	global.playerHealth += strength
	if (global.playerHealth > global.maxPlayerHealth) {
		global.playerHealth = global.maxPlayerHealth
	}
}