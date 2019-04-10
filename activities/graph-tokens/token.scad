
d = 60;  // diameter of the inner plate of the token, this is the real area
k = 0.1;

magnet_dim = [ 2 + 0.2, 11, 3 + 0.1 ];  // 3x10x2mm original size
magnet_n = 8;                           // magnet count

is_inner_hollow = true;  // whenner the frames are hollow in the middle or not

// used if not is_inner_hollow:
bottom_t = 1;  // thickness of the center of frame

// used if is_inner_hollow:
inner_circle_frame = 2;    // overlap of the frame over the inner plate
inner_circle_t = 3 + 0.1;  // thickness of plate inside the frame

corner_t = 1.5;  // cut-off of the corner of frame
t = 1.5;       // thickness of material around magnet
h = magnet_dim[2]/2 + 0.6;         // height of one side

// resolution values
$fa = 0.5;
$fs = 0.5;


big_d = d + (is_inner_hollow ? 2 * magnet_dim[0] + t * 4 : 0) +
        corner_t * 2;  // outter diameter
magnet_r = sqrt(pow(big_d / 2, 2) - pow(magnet_dim[1] / 2, 2)) -
           magnet_dim[0] / 2 - t -
           corner_t;  // radius on which center of magnet is

make = "token_frame";  // for use with makefile

module token_frame() difference() {
    union() {
        translate([ 0, 0, h - corner_t ]) {
            cylinder(d1 = big_d, d2 = big_d - corner_t * 2, h = corner_t);
        }

        cylinder(d = big_d, h = h - corner_t);
    }

    if (is_inner_hollow) {
        cylinder(d = d - 2 * inner_circle_frame, h = 100, center = true);
        cylinder(d = d + k*2, h = inner_circle_t, center = true);
    } else {
        translate([ 0, 0, bottom_t ]) cylinder(d = d + k*2, h = 100);
    }

    for (i = [0:magnet_n]) rotate([ 0, 0, i * 360 / magnet_n ]) {
            translate([ magnet_r, 0, 0 ]) cube(magnet_dim, center = true);
        }
}

module token_plate() {  //
    if (is_inner_hollow) {
        cylinder(d = d, h = inner_circle_t, center = true);
    } else {
        cylinder(d = d, h = h - bottom_t);
    }
}

if (make == "token_frame") {
    token_frame();
} else if (make == "token_plate") {
    token_plate();
}
