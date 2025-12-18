draw_self()

//draw_circle(swipePosition.getX(), swipePosition.getY(), checkingRadius, false)

var textID = layer_text_get_id("CardSwipeLayer", $"CardSwipeText");
layer_text_text(textID, $"{readerStatus}");

draw_text_transformed_colour(20, 20, string(int64(busTimer/1000)), 3, 3, 0, c_red, c_red, c_red, c_red, 1)