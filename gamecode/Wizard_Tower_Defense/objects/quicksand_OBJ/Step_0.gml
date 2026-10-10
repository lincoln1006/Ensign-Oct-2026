if distance_to_point(global.wizardTowerX, global.wizardTowerY) > maxDistance{
	if hasAOE == true{
		show_debug_message("aoe spawned");
		instance_create_layer(self.x, self.y, "Instances", AOE_OBJ, {
			AOEsprite: AOEsprite,
			damage: 0,
			life: 16,
			isStun: true})	
	}
	instance_destroy(id)
}