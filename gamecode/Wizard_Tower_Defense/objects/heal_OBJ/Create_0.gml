endX = mouse_x;
endY = mouse_y;
negX = x < mouse_x;
negY = y < mouse_y;

distMouse = distance_to_point(mouse_x, mouse_y);
if distMouse < maxDistance{
    maxDistance = distMouse;
}

x = mouse_x;
y = mouse_y;
timer = 0;
function aoeHit(){
    instance_create_layer(self.x, self.y, "Instances", AOE_OBJ, {
        AOEsprite: AOEsprite});
}