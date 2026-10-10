onSpawn()

function onDeath() {
    for (var i = 0; i < activeDebuffs.length; i++) {
        try {
            activeDebuffs[i].onDeath()
        }
        dropCrystal()
    }
}

function onSpawn() {
    maxHP *= global.modifiers.enemyHP
    currentHP = maxHP
    attack *= global.modifiers.enemyAttack
}

function onHurt(damage) {
    var success = false
    for (var i = 0; i < activeDebuffs.length; i++) {
        try {
            if (activeDebuffs[i].onHurt(damage) == true && success == false) {
                currentHP -= damage * 1.5
                success = true
            }
        }
    }
    if (success == false) {
        currentHP -= damage
    }
}

function onAttack() {
    if (canAttack) {
        canAttack = false
        alarm_set(0, 60 * 2)
    }
}

function dropCrystal() {
    //fire
    var fireDropRate = 0.2 + global.modifiers.fireGemDrop;
    var fireDrops = floor(fireDropRate);
    if (random(1) < fireDropRate - fireDrops) {
        fireDrops += 1;
    }
    global.curFireGems += fireDrops;

    //water
    var waterDropRate = 0.2 + global.modifiers.waterGemDrop;
    var waterDrops = floor(waterDropRate);
    if (random(1) < waterDropRate - waterDrops) {
        waterDrops += 1;
    }
    global.curWaterGems += waterDrops;

    //earth
    var earthDropRate = 0.2 + global.modifiers.earthGemDrop;
    var earthDrops = floor(earthDropRate);
    if (random(1) < earthDropRate - earthDrops) {
        earthDrops += 1;
    }
    global.curEarthGems += earthDrops;
}