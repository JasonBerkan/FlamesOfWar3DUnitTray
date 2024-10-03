include <..\TankBases.scad>

difference()
{
    cube([45, 28.5, 3]);
    translate([4, 4, 1])
        ToldiTankBase(2);
}