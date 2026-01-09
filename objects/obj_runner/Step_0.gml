// Input
rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right)
leftKey =  keyboard_check(ord("A")) || keyboard_check(vk_left)

if (!global.should_show_dialog && !global.is_making_choice){movement();}

