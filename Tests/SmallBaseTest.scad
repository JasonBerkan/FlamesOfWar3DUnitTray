include <..\InfantryBases.scad>

difference()
{
    cube([40, 33, 3]);
    translate([4, 4, 1])
        SmallInfantryBase(2);
}