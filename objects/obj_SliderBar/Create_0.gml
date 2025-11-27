
cursor = window_get_cursor();

// The maximum distance the knob can go from the start of the slider scales inverse of amount_max
// No idea why it does but 115 looks good enough and the amount is clamped anyways so :p
amount_max = 115;
amount_current = 60;
amount = 0.6;
is_being_dragged = false;
is_being_hovered = false;