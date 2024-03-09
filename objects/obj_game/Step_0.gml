/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_escape) {
	room_goto(rm_menu);
}

powerup_time -= delta_time / 1000000;