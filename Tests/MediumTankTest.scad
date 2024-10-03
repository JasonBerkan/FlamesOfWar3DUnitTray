include <..\TankBases.scad>

difference()
{
    cube([58, 41, 3]);
    translate([4, 4, 1])
        PantherTankBase(2);
}