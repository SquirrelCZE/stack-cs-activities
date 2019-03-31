
d = 60;  // inner radius of the token, this is the visible area

magnet_dim = [ 2 + 0.2, 11, 3 ];  // 3x10x2mm original
magnet_n = 8;                     // magnet count

is_inner_hollow = true;  // whenner the frames are hollow in the middle or not

// used if not is_inner_hollow:

bottom_t = 1;  // thickness of the inner circle

// used if is_inner_hollow:
inner_circle_t = 3 + 0.1;  // thickness of placte inside the frame
inner_circle_d = d + 2;

corner_t = 2;  // cut-off of the corner of token
t = 1;         // minimal thickness of material around magnet
h = 3;         // height of one side

// resolution values
$fa = 0.5;
$fs = 0.5;

big_d = d + 10 + (is_inner_hollow ? 3 : 0);  // outter diameter
magnet_r = big_d / 2 - corner_t - t;  // radius on which center of magnet is

make = "token_frame";  // for use with makefile

module token_frame() difference() {
    union() {
        translate([ 0, 0, h - corner_t ]) {
            cylinder(d1 = big_d, d2 = big_d - corner_t * 2, h = corner_t);
        }

        cylinder(d = big_d, h = h - corner_t);
    }

    if (is_inner_hollow) {
        cylinder(d = d, h = 100, center = true);
        cylinder(d = inner_circle_d, h = inner_circle_t, center = true);
    } else {
        translate([ 0, 0, bottom_t ]) cylinder(d = d, h = 100);
    }

    for (i = [0:magnet_n]) rotate([ 0, 0, i * 360 / magnet_n ]) {
            translate([ magnet_r, 0, 0 ]) cube(magnet_dim, center = true);
        }
}

module token_plate() {  //
    if (is_inner_hollow) {
        cylinder(d = inner_circle_d, h = inner_circle_t, center = true);
    } else {
        cylinder(d = d, h = h - bottom_t);
    }
}

if (make == "token_frame") {
    token_frame();
} else if (make == "token_plate") {
    token_plate();
}
