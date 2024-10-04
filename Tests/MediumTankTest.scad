include <..\TankBases.scad>

difference()
{
    cube([41, 58, 3]);
    translate([4, 4, 1])
        PantherTankBase(2);
}