var camera = view_camera[0]
var player_x = obj_Player.x
var player_y = obj_Player.y

// get the middle coordinates of the viewport
var cam_x = camera_get_view_x(camera) + camera_get_view_width(camera)/2 
var cam_y = camera_get_view_y(camera) + camera_get_view_height(camera)/2

distance_from_camera_center = point_distance(player_x, player_y, cam_x, cam_y);

//get the distance from the corner of the viewport to the middle
var max_distance_from_camera = point_distance(camera_get_view_x(camera), camera_get_view_y(camera), cam_x, cam_y)

//cut the max distance from camera so it starts moving earlier
max_distance_from_camera -= camera_distance_cutoff

//reduce distance to 0-1 so it can be used to lerp
var distance_scaled = distance_from_camera_center / max_distance_from_camera

//TODO: seperate cam_speed on x and y
var cam_speed = lerp(camera_speed_min, camera_speed_max, distance_scaled);

camera_set_view_speed(camera, cam_speed, cam_speed)