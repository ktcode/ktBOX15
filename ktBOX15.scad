//
// ktBOX15
//
//

gap1 = 0.001;
gap2 = 0.002;

th = 2;
pth = 3;

r = 6.2;
rth = 3.2;
rth2 = 4.2;

mag();

module hole()
{
difference()
{
    union()
    {
        translate([0, 0, -pth-th]) cube([30, 30, th+pth+th]);
        translate([0, 0, (r+th*2)/2]) rotate([0, 90, 90]) cylinder(h=rth, r=(r+th*2)/2, $fn=100);
        translate([-(r+th*2)/2, 0, 0]) cube([(r+th*2)/2, rth, (r+th*2)/2]);
        translate([0, 0, 0]) cube([(r+th*2)/2, rth, (r+th*2)/2]);
    }
    translate([th, -gap1, -pth-th+th]) cube([30, 30+gap2, pth]);
    
    translate([0, 0-gap1, (r+th*2)/2]) rotate([0, 90, 90]) cylinder(h=rth+gap2, r=r/2, $fn=100);
}
}
module mag()
{
difference()
{
    union()
    {
        translate([0, 0, -pth-th]) cube([30, 30, th+pth+th]);
        translate([0, 0, (r+th*2)/2]) rotate([0, 90, 90]) cylinder(h=rth2, r=(r+th*2)/2, $fn=100);
        translate([-(r+th*2)/2, 0, 0]) cube([(r+th*2)/2, rth2, (r+th*2)/2]);
        translate([0, 0, 0]) cube([(r+th*2)/2, rth2, (r+th*2)/2]);
    }
    translate([th, -gap1, -pth-th+th]) cube([30, 30+gap2, pth]);
    
    translate([0, rth2-rth+gap1, (r+th*2)/2]) rotate([0, 90, 90]) cylinder(h=rth, r=r/2, $fn=100);
}
}


