var dx = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var dy = keyboard_check(ord("S")) - keyboard_check(ord("W"))

player_speed = 10

dx*=player_speed
dy*=player_speed



if(dx + dy != 0 && !audio_is_playing(footstep_grass1)){audio_play_sound(footstep_grass1, 0, 0)}

move_and_collide(dx, dy, all)