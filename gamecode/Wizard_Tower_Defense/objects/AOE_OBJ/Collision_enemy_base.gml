other.onHurt(damage);
array_push(enemiesEffected, other.id);
if isStun{
	other.speed = 0;
}
if isPoison and other.poisonSource != id{
	other.poisonSource = id;
	instance_create_layer(0, 0, "Effects", effectPoison, {life: 30, strength: 1, enemy:other.id});
}