include <..\InfantryBases.scad>

difference()
{
    cube([58, 40, 3]);
    translate([4, 4, 1])
        MediumInfantryBase(2);
}