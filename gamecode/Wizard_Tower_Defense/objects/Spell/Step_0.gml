if distance_to_point(global.watchTowerX, global.watchTowerY) > maxDistance{
	if hasAOE == true{
		show_debug_message("aoe spawned");
		instance_create_layer(self.x, self.y, "Instances", AOE_OBJ, {AOEsprite: AOEsprite})	
	}
	instance_destroy(id)
}