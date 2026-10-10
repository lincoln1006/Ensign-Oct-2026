spellInput = "";
spellTimeout = 60;
global.maxEarthGems = 30
global.maxFireGems = 30;
global.maxWaterGems = 30;

global.curEarthGems = 30;
global.curFireGems = 30;
global.curWaterGems = 30;
spells = {
	"ff": "fireball"
}
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
	if string_char_at(spellInput, 3) == "f"{
		fireModifier = true
	}
	else if string_char_at(spellInput, 3) == "w"{
		waterModifier = true
	}
	else if string_char_at(spellInput, 3) == "e"{
		earthModifier = true
	}
	
	if string_char_at(spellInput, 1) == "f"{
		if string_char_at(spellInput, 2) == "f"{
			var fireCost = global.fireballCosts.fire;
			var earthCost = global.fireballCosts.earth;
			var waterCost = global.fireballCosts.water;
			show_debug_message("here")
			if (global.curFireGems - fireCost < 0) or (global.curEarthGems - earthCost < 0) and (global.curWaterGems - waterCost < 0){
				show_debug_message("not enough gems");
			} 
			else{
				instance_create_layer(self.x, self.y, "Instances", fireball_OBJ, {
				fireModifier: fireModifier,
				waterModifier: waterModifier,
				earthModifier: earthModifier
				})
				global.curEarthGems -= earthCost;
				global.curFireGems -= fireCost;
				global.curWaterGems -= waterCost;
				show_debug_message(global.curFireGems);
			}
				
			
		}
	}
	
	
}