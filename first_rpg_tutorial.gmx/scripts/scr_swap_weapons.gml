///scr_swap_weapons(new_weapon)

var new_weapon = argument0;
var current_weapon = weapon_sprite;

weapon_sprite = new_weapon.sprite_index;
new_weapon.sprite_index = current_weapon;
