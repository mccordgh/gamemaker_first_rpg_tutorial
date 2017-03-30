/// scr_move_to_target()

// Get Direction to target (player) and move speeds
var dir = point_direction(0, 0, x_axis, y_axis);
var h_speed = lengthdir_x(spd, dir);
var v_speed = lengthdir_y(spd, dir);

// Face enemy toward target
if (h_speed != 0) image_xscale = sign(h_speed);

// Set Movement
scr_get_dir_facing(dir);
movement = MOVE;

// Move towards target
phy_position_x += h_speed;
phy_position_y += v_speed;
