draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0 , c_white, 1);
var new_width = 0;
for (var i=0; i < menu_lenght; i++)
	{
		var option_width = string_width(option[menu_level,i])
		new_width = max(new_width, option_width)
	}
width = new_width + menu_border*2;
height = menu_border*2 + string_height(option[0,0]) + (menu_lenght-1)*menu_space;
/*
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;
*/
draw_set_font(Font1)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

for (var i=0; i < menu_lenght; i++)
{
	var c1 = c_grey;
	var c2 = c_grey;
	var c3 = c_grey;
	var c4 = c_grey;
	if pos == i {c1 = c_white; c3 = c_white; c2 = c_white; c4 = c_white;}
	draw_text_color(x+menu_border, y+menu_border + menu_space*i , option[menu_level, i], c1, c2, c3, c4, 1)
}

window_set_fullscreen(fullscreen)





