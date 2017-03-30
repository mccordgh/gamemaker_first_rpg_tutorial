/// scr_check_for_player()

if (instance_exists(obj_player)) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    if (dist < sight) {
        state = scr_enemy_chase_state;
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        x_axis = lengthdir_x(1, dir);
        y_axis = lengthdir_y(1, dir);
    } else {
        scr_enemy_choose_next_state();
    }
} else {
    scr_enemy_choose_next_state();
}
