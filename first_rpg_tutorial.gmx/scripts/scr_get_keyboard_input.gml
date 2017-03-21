///scr_get_keyboard_input()

//set keyboard key values
right_key = keyboard_check(ord('D'));
left_key = keyboard_check(ord('A'));
up_key = keyboard_check(ord('W'));
down_key = keyboard_check(ord('S'));
dash_key = keyboard_check(ord('J'));
attack_key = keyboard_check(ord('K'));
pause_key = keyboard_check_pressed(vk_escape);

// Get the axis
// This returns 1 if either key pressed, and 0 if both or no keys pressed
x_axis = (right_key - left_key);
y_axis = (down_key - up_key);

// Check for gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    x_axis = gamepad_axis_value(0, gp_axislh);
    y_axis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
    pause_key = gamepad_button_check_pressed(0, gp_start);
}
