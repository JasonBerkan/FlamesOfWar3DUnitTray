include <..\TankBases.scad>

// This test is for the majority of my Toldis.
difference()
{
    cube([29, 45, 3]);
    translate([4, 4, 1])
        ToldiTankBase(0, 0, 2);
}

// This test is for my Toldi that is much narrower.
translate([40, 0, 0])
difference()
{
    cube([29, 45, 3]);
    translate([4, 4, 1])
        ToldiTankBase(-0.5, -0, 2);
}