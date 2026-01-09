var array_size = array_length(spawnable_object)
var random_index = irandom(array_size - 1)
var random_object = array_get(spawnable_object, random_index)

instance_create_layer(irandom(room_width), -300, "Instances", random_object)

alarm[0] = 1.5*room_speed;