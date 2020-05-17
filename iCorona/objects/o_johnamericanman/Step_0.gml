if (keyboard_check(ord("D")) && place_free (x + collisionSpeed, y)) {
	x += walkSpeed;
	image_speed = walkSpeed / 3;
}
if (keyboard_check(ord("A")) && place_free (x - collisionSpeed, y)) {
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
}
if (keyboard_check(ord("W")) && place_free (x, y - collisionSpeed)) {
	y -= walkSpeed;
	image_speed = walkSpeed / 3;
}
if (keyboard_check(ord("S")) && place_free (x, y + collisionSpeed)) {
	y += walkSpeed;
	image_speed = walkSpeed / 3;
}