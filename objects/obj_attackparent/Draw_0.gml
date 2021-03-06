if (!surface_exists(surface)) {
    surface = surface_create(1024, 1024);
}
else {
	surface_set_target(surface);
	draw_clear_alpha(c_black, 0);
	x -= (obj_uborder.x + 5);
	y -= (obj_uborder.y + 5);
	draw_self();
	x += (obj_uborder.x + 5);
	y += (obj_uborder.y + 5);
	surface_reset_target();

	draw_surface_part(surface, 0, 0, (obj_dborder.x - obj_uborder.x) - 10, (obj_dborder.y - obj_uborder.y) - 10, obj_uborder.x + 5, obj_uborder.y + 5);
}