///scr_attack_state()
image_speed = .6;
movement = ATTACK;

if (scr_animation_hit_frame(2)) {
    var attack_animation = instance_create(x, y, obj_weapon_animation);
    attack_animation.dir = dir_facing * 90;
    attack_animation.image_angle = dir_facing * 90 + 45;
    attack_animation.sprite_index = weapon_sprite;
}

if (scr_animation_hit_frame(3)) {
    switch (dir_facing) {
        case DOWN:
            xx = x;
            yy = y + 12;
            break;
    
        case UP:
            xx = x;
            yy = y - 10;
            break;
        
        case RIGHT:
            xx = x + 10;
            yy = y + 2;
            break;
        
        case LEFT:
            xx = x - 10;
            yy = y + 2;
            break;
    }

    // attack sound effect
    audio_play_sound(snd_sword_attack, 10, false);
    
    // create damage instance
    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    damage.damage = obj_player_stats.attack;
}

