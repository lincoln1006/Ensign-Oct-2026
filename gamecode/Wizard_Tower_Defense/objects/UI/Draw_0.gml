initx = global.wizardTowerX - 100;
inity = global.wizardTowerY + 100;
draw_sprite(gem_earth, 0, initx, inity);
draw_text(initx - 30, inity, string(global.curEarthGems) + "/" + string(global.maxEarthGems));
initx += 90;
draw_sprite(gem_water, 0, initx, inity);
draw_text(initx - 30, inity, string(global.curWaterGems) + "/" + string(global.maxWaterGems));
initx += 90;
draw_sprite(gem_fire, 0, initx, inity);
draw_text(initx - 30, inity, string(global.curFireGems) + "/" + string(global.maxFireGems));

initx = global.wizardTowerX - 100
inity = global.wizardTowerY + 100
draw_healthbar(initx - 60, inity - 5, initx + 60, inity + 5, global.playerHealth/global.maxPlayerHealth * 100, c_maroon, c_yellow, c_green, 0, true, true)