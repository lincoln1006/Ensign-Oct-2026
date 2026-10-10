if distance_to_point(global.wizardTowerX, global.wizardTowerY) > maxDistance{
	if hasAOE == true{
		show_debug_message("quicksand spawned");
		instance_create_layer(self.x, self.y, "Instances", AOE_OBJ, {
			AOEsprite: AOEsprite,
			damage: damage,
			life: life,
			isStun: isStun})	
	}
	instance_destroy(id)
}