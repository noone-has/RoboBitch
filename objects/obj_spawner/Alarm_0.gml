var array_size = array_length(spawnable_object)
var random_index = irandom(array_size - 1)

var new_obstacle = instance_create_layer(irandom(room_width), -room_height, object_layer, array_get(spawnable_object, random_index))


new_obstacle.image_angle += irandom(360)
var scale_multiplier = irandom_range(0.5, 0.85)
new_obstacle.image_xscale = new_obstacle.image_xscale * scale_multiplier
//new_obstacle.image_yscale *= scale_multiplier

alarm[0] = 1.5*room_speed