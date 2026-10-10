pdir = point_direction(x, y, mouse_x, mouse_y);
motion_set(pdir, speed);
endX = mouse_x;
endY = mouse_y;
negX = x < mouse_x;
negY = y < mouse_y;
image_angle = pdir
function aoeHit(AOESprite){
	instance_create_layer(self.x, self.y, "Instances", AOE_OBJ, {
		AOEsprite: AOEsprite});
}