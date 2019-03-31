d = 50;  // inner radius of the token

magnet_dim = [ 2 + 0.2, 11, 3 ];  // 3x10x2mm original
magnet_alpha = 45;          // angle between magnets

bottom_t = 1;  // thickness of the inner circle

corner_t = 2;  // cut of the corner of token
t = 1;         // minimal thickness of material around magnet
h = 3;         // height

big_d = d + 10;
magnet_r = big_d / 2 - corner_t - t;

// resolution values
$fa = 0.5;
$fs = 0.5;

module token() {
    difference() {
        union() {
            translate([ 0, 0, h - corner_t ]) {
                cylinder(d1 = big_d, d2 = big_d - corner_t * 2, h = corner_t);
            }

            cylinder(d = big_d, h = h - corner_t);
        }

        translate([ 0, 0, bottom_t ]) cylinder(d = d, h = 10);

        for (a = [0:magnet_alpha:360])
            rotate([ 0, 0, a ]) translate([ magnet_r, 0, 0 ])
                cube(magnet_dim, center = true);
    }
}

module inner() {  //
    cylinder(d = d, h = h - bottom_t);
}
token();
