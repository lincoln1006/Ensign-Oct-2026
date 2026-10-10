if (spellTimer > spellTimeout){
	spellTimer = 0;
	spellInput = "";
	//show_debug_message("spell cancelled");
}
spellTimer += 1;
if global.playerHealth < global.maxPlayerHealth{
	global.playerHealth += global.modifiers.towerRecovery
}

if global.maxPlayerHealth < global.playerHealth {
	global.playerHealth = global.maxPlayerHealth
}

global.maxPlayerHealth = global.baseMaxPlayerHealth * global.modifiers.bonusTowerHP