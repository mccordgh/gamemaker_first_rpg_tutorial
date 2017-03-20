///scr_move_state()
scr_get_keyboard_input();

// Get direction
dir = point_direction(0, 0, x_axis, y_axis);

// Get length of move
if (x_axis == 0 and y_axis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_dir_facing();
}

// Get h and v speeds
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = .2;
if (len == 0) image_index = 0;

// Get direction facing and set sprite accordingly
switch (dir_facing) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
        
    case UP:
        sprite_index = spr_player_up;
        break;
        
    case LEFT:
        sprite_index = spr_player_left;
        break;
        
    case DOWN:
        sprite_index = spr_player_down;
        break;
}
    

