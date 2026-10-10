spellInput = "";
spellTimeout = 60;
global.maxEarthGems = 30
global.maxFireGems = 30;
global.maxWaterGems = 30;

global.curEarthGems = 30;
global.curFireGems = 30;
global.curWaterGems = 30;
global.wizardTowerX = x;
global.wizardTowerY = y;

function getSpellInput(){
	if keyboard_check_pressed(ord("A")){
		spellTimer = 0;
		spellInput += "f";
	}
	if keyboard_check_pressed(ord("S")){
		spellTimer = 0;
		spellInput += "w";
	}	
	if keyboard_check_pressed(ord("D")){
		spellTimer = 0;
		spellInput += "e";
	}
	if keyboard_check_pressed(ord("F")){
		spellTimer = 0;
		spellInput = "";
		show_debug_message("spell cancelled");
	}
	show_debug_message(spellInput)
	if string_length(spellInput) == 3{
		castSpell(spellInput);
		spellInput = "";
	}
}

function castSpell(spellInput){
	fireModifier = false
	waterModifier = false
	earthModifier = false
	spellStruct = {fireModifier: false,
	waterModifier: false,
	earthModifier: false}
	
	str1 = string_char_at(spellInput, 1);
	str2 = string_char_at(spellInput, 2);
	
	if string_char_at(spellInput, 3) == "f"{
		fireModifier = true
	}
	else if string_char_at(spellInput, 3) == "w"{
		waterModifier = true
	}
	else if string_char_at(spellInput, 3) == "e"{
		earthModifier = true
	}
	if str1 == "w" and str2 == "w"{
		show_debug_message("wave fr");
		var fireCost = global.waveCosts.fire;
		var earthCost = global.waveCosts.earth;
		var waterCost = global.waveCosts.water;
		if (global.curFireGems - fireCost < 0) or (global.curEarthGems - earthCost < 0) or (global.curWaterGems - waterCost < 0){
			show_debug_message("not enough gems");
		} 
		else{
			instance_create_layer(self.x, self.y, "Instances", wave_OBJ, spellStruct)
			global.curEarthGems -= earthCost;
			global.curFireGems -= fireCost;
			global.curWaterGems -= waterCost;
		}
	}
	
	if str1 == "f" and str2 == "f"{
		var fireCost = global.fireballCosts.fire;
		var earthCost = global.fireballCosts.earth;
		var waterCost = global.fireballCosts.water;
		show_debug_message("here")
		if (global.curFireGems - fireCost < 0) or (global.curEarthGems - earthCost < 0) and (global.curWaterGems - waterCost < 0){
			show_debug_message("not enough gems");
		} 
		else{
			instance_create_layer(self.x, self.y, "Instances", fireball_OBJ, spellStruct)
			global.curEarthGems -= earthCost;
			global.curFireGems -= fireCost;
			global.curWaterGems -= waterCost;
		}
	}
	
	if str1 == "e" and str2 == "e"{
		var fireCost = global.quicksandCosts.fire;
		var earthCost = global.quicksandCosts.earth;
		var waterCost = global.quicksandCosts.water;
		show_debug_message("here")
		if (global.curFireGems - fireCost < 0) or (global.curEarthGems - earthCost < 0) and (global.curWaterGems - waterCost < 0){
			show_debug_message("not enough gems");
		} 
		else{
			instance_create_layer(self.x, self.y, "Instances", quicksand_OBJ, spellStruct)
			global.curEarthGems -= earthCost;
			global.curFireGems -= fireCost;
			global.curWaterGems -= waterCost;
		}
	}
}