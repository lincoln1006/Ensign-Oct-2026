enemies = [
	[GasBill, 0],
	[GasBill, 0],
	[GasBill, 0],
	[WaterBill, 30],
	[GasBill, 0],
	[GasBill, 30],
	[PowerBill, 0]
]

baseAngle = irandom(359)
tower = instance_find(wizardTower_OBJ, 0);

function spawnNext(enemyName) {
	var angle = baseAngle + irandom(80) - 40; // degrees
	var radius = 500;

	var spawn_x = tower.x + lengthdir_x(radius, angle);
	var spawn_y = tower.y + lengthdir_y(radius, angle);

	instance_create_layer(spawn_x, spawn_y, "Instances", enemyName);
}