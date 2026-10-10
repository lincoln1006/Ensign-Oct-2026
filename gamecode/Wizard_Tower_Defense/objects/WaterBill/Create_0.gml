event_inherited()

function onSpawn() {
    maxHP *= global.modifiers.enemyHP
    currentHP *= global.modifiers.currentHP
    attack *= global.modifiers.enemyAttack
    array_push(activeBuffs, instance_create_layer(0, 0, "Effects", effect_HPRegen, {enemyID: id}))
}