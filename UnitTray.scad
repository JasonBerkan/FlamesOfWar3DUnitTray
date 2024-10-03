include <Tray.scad>
include <Supports.scad>
include <InfantryBases.scad>

tray_width = 200;
tray_length = 170;
tray_height = 3;

difference()
{
    // This defines the tray base and as the first piece added to difference, it will define
    // the solid part of the tray base.
    Tray(tray_width, tray_length, tray_height);

    // Everything defined after the above call to Tray() will be cut out of the tray.
    row1 = 34.1;
    row2 = 68.7;
    row3 = 103.3;

    column1 = 22.1;
    column2 = 74.7;
    column3 = 127.3;

    // First row - one small command base.
    translate([column2+9, row1, tray_height-2])
        SmallInfantryBase(tray_height-1);

    // Second row - three medium bases.
    translate([column1, row2, tray_height-2])
        MediumInfantryBase(tray_height-1);
    translate([column2, row2, tray_height-2])
        MediumInfantryBase(tray_height-1);
    translate([column3, row2, tray_height-2])
        MediumInfantryBase(tray_height-1);

    // Third row - three medium bases.
    translate([column1, row3, tray_height-2])
        MediumInfantryBase(tray_height-1);
    translate([column2, row3, tray_height-2])
        MediumInfantryBase(tray_height-1);
    translate([column3, row3, tray_height-2])
        MediumInfantryBase(tray_height-1);

    // Put in the four holes on the bottom of the base for the supports to fit into.
    translate([10, 10, 0])
        SupportBottom();
    translate([10, tray_length-10, 0])
        SupportBottom();
    translate([tray_width-10, 10, 0])
        SupportBottom();
    translate([tray_width-10, tray_length-10, 0])
        SupportBottom();
}

