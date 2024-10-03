include <..\InfantryBases.scad>

// For a unit tray, we define a tray base and then use difference
// to cut out the individual spots for the bases.
difference()
{
    // This defines the tray base.
    cube([58, 40, 3]);
    // This puts a small command team indentation in the tray base.
    translate([4, 4, 1])
        MediumInfantryBase(2);
}