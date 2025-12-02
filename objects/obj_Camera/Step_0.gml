var camera = view_camera[0]
x = obj_Player.x
y = obj_Player.y

// adding the width/height to get the center of the camera
var cam_x = camera_get_view_x(camera) + camera_get_view_width(camera)/2 
var cam_y = camera_get_view_y(camera) + camera_get_view_height(camera)/2

distance_from_camera_center = point_distance(x, y, cam_x, cam_y);

var max_distance_from_camera = point_distance(camera_get_view_x(camera), camera_get_view_y(camera), cam_x, cam_y)
max_distance_from_camera -= camera_distance_cutoff

var distance_scaled = distance_from_camera_center / max_distance_from_camera

var cam_speed = lerp(camera_speed_min, camera_speed_max, distance_scaled);

camera_set_view_speed(camera, cam_speed, cam_speed)