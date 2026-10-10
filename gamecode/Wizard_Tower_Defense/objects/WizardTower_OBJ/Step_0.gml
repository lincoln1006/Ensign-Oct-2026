if (spellTimer > spellTimeout){
	spellTimer = 0;
	spellInput = "";
	//show_debug_message("spell cancelled");
}
spellTimer += 1;