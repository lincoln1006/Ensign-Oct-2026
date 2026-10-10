spellInput = "";
spellTimeout = 60;
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
			instance_create_layer(self.x, self.y, "Instances", fireball_OBJ, {
			fireModifier: fireModifier,
			waterModifier: waterModifier,
			earthModifier: earthModifier
			})
		}
	}
}