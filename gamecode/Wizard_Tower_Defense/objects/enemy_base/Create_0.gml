onSpawn()

function onDeath() {
	for (var i = 0; i < activeDebuffs.length; i++) {
		try {
			i.onDeath()
		}
	}
}

function onSpawn() {
}

function onHurt(damage) {
	var success = false
	for (var i = 0; i < activeDebuffs.length; i++) {
		try {
			if (i.onHurt(damage) == true) {
				currentHP -= damage * 1.5
				success = true
			}
		} catch (_expression) {
			currentHP -= damage
		}
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