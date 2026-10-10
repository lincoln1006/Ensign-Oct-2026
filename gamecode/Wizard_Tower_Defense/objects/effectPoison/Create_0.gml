// Inherit the parent event
event_inherited();

function onTick() {
	if instance_exists(enemy){
		enemy.onHurt(strength)
		global.playerHealth += strength
		if (global.playerHealth > global.maxPlayerHealth) {
			global.playerHealth = global.maxPlayerHealth
		}
	}
}