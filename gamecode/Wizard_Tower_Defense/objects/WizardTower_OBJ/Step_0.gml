if (spellTimer > spellTimeout){
	spellTimer = 0;
	spellInput = "";
	//show_debug_message("spell cancelled");
}
spellTimer += 1;
if global.curHealth < global.maxPlayerHealth{
	global.curHealth += global.modifier.towerRecovery
}

if global.maxPlayerHealth < global.curHealth {
	global.curHealth = global.maxPlayerHealth
}

global.maxPlayerHealth = global.baseMaxPlayerHealth * global.modifier.bonusTowerHP