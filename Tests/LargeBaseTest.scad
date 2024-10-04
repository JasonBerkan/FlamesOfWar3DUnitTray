include <..\GunBases.scad>

difference()
{
    cube([60, 70, 3]);
    translate([5, 3, 1])
        LargeGunBase(2);
}