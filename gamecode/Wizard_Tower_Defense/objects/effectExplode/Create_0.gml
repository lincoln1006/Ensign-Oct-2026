// Inherit the parent event
event_inherited();

function onDeath() {
	instance_create_layer(x, y, "Instances", EnemyExplode)
}