var array_size = array_length(spawnable_object)
var random_index = irandom(array_size - 1)

var new_obstacle = instance_create_layer(irandom(room_width), -room_height, object_layer, array_get(spawnable_object, random_index))

alarm[0] = 1.5*room_speed;
show_debug_message("ALARMA")