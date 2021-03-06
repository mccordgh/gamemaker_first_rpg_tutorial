/// scr_enemy_choose_next_state()

if (alarm[0] <= 0) {
    if (hostile) {
        state = scr_enemy_chase_state;
    } else {
        state = choose(scr_enemy_patrol_state, scr_enemy_idle_state);
        alarm[0] = room_speed * irandom_range(2, 4);
        // If patroling, get a new direction
        if (state == scr_enemy_patrol_state) {
            x_axis = random_range(-1, 1);
            y_axis = random_range(-1, 1);
        }
    }
}
