include <InfantryBases.scad>

depth = 2;
difference()
{
    // This defines the tray base.
    cube([200, 200, 3]);
    // This puts the first row of three bases into the tray base.
    translate([10, 10, 1])
        MediumBase(depth);
    translate([65, 10, 1])
        MediumBase(depth);
    translate([120, 10, 1])
        MediumBase(depth);
    // This puts the second row of three bases into the tray base.
    translate([10, 47, 1])
        MediumBase(depth);
    translate([65, 47, 1])
        MediumBase(depth);
    translate([120, 47, 1])
        MediumBase(depth);
    // This puts the small command teams into the tray base.
    translate([65, 84, 1])
        SmallBase(depth);
    translate([65, 84, 1])
        SmallBase(depth);
}