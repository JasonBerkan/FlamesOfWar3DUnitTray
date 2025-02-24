include <Tray.scad>
include <InfantryBases.scad>
include <CardHolder.scad>

tray_width = 200;
tray_length = 170;
tray_height = 3;

difference()
{
    // This defines the tray base and as the first piece added to difference, it will define
    // the solid part of the tray base.
    union()
    {
        Tray(tray_width, tray_length, tray_height);
        // Second row - a card holder.
        translate([43, 65, tray_height])
            CardHolder(8);
    }

    // Everything defined after the above call to Tray() will be cut out of the tray.
    row1 = 25;

    column1 = 66.4;
    column2 = 101;

    // First row - two small command bases.
    translate([column1, row1, tray_height-2])
        SmallInfantryBase(tray_height-1);
    translate([column2, row1, tray_height-2])
        SmallInfantryBase(tray_height-1);
    
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