///scr_get_keyboard_input()

//set keyboard key values
right_key = keyboard_check(ord('D'));
left_key = keyboard_check(ord('A'));
up_key = keyboard_check(ord('W'));
down_key = keyboard_check(ord('S'));
dash_key = keyboard_check(ord('J'));
attack_key = keyboard_check(ord('K'));

// Get the axis
// This returns 1 if either key pressed, and 0 if both or no keys pressed
x_axis = (right_key - left_key);
y_axis = (down_key - up_key);

// check for Dash key press
if (dash_key and obj_player_stats.stamina >= DASH_COST) {
    obj_player_stats.stamina -= DASH_COST;
    state = scr_dash_state;
    alarm[0] = room_speed/5;
    obj_player_stats.alarm[0] = room_speed * 2;  
}

// Check for attack key press
if (attack_key) {
    image_index = 0;
    state = scr_attack_state;
}
