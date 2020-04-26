///Input
keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))

/// Movement
hspd = keyRight - keyLeft
vspd = keyDown - keyUp

if (hspd != 0 or vspd != 0) {
	Direction = point_direction(0,0,hspd,vspd)

	x += lengthdir_x(movespeed,Direction)
	y += lengthdir_y(movespeed,Direction)
}