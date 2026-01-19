objectSprites = [spr_bpblue, spr_bpred]
arraySize = array_length(objectSprites)
randomIndex = irandom(arraySize - 1)
randomSprite = array_get(objectSprites, randomIndex)
movespeed = 7;

depth = -50

sprite_index = randomSprite;

image_angle += irandom(360)
var scale_multiplier = irandom_range(100, 130) / 1000 //idk if theres a float version of this func but idc atp
show_debug_message(scale_multiplier)
image_xscale *= scale_multiplier
image_yscale *= scale_multiplier
