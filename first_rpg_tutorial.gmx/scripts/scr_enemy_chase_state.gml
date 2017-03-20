/// scr_enemy_chase_state()

scr_check_for_player();

phy_position_x += sign(target_x - x) * spd;
phy_position_y += sign(target_y - y) * spd;
