/// @description Insert description here

// spawn powerup
if obj_game.powerup_time < 0 {
	var _obj = choose(obj_powerup_spread, obj_powerup_ghost);
	instance_create_layer(x, y, "Instances", _obj);
	obj_game.powerup_time = 20;
}

// get rid of the bullet and trigger an explosion
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

// change the direction of the rock
direction = random(360);

// big rock goes to 2 small, small goes to big if less than 12, otherwise destroy
if sprite_index == spr_rock_big {
	sprite_index = spr_rock_small;
	instance_copy(true);
} else if instance_number(obj_rock) < 12 {
	sprite_index = spr_rock_big;
	x = -100;
} else {
	instance_destroy();
}

obj_game.points += 1;