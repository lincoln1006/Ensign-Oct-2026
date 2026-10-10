// Inherit the parent event
event_inherited();
maxDistance = distance_to_point(mouse_x, mouse_y);
show_debug_message(maxDistance)
instance_create_layer(mouse_x, mouse_y, "Instances", AOE_OBJ, {
			AOEsprite: AOEsprite,
			damage: damage,
			life: life,
			isStun: isStun,
			isPoison: isPoison});
instance_destroy(id);
