enemies = [
	[WaterBill, 0],
	[PowerBill, 20],
	[GasBill, 20]
]

tower = instance_find(wizardTower_OBJ, 0);

function spawnNext(enemyName) {
	var angle = baseAngle + irandom(80) - 40; // degrees
	var radius = 500;

	var spawn_x = tower.x + lengthdir_x(radius, angle);
	var spawn_y = tower.y + lengthdir_y(radius, angle);

	instance_create_layer(spawn_x, spawn_y, "Instances", enemyName);
}