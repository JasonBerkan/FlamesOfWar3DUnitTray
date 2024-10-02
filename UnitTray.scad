include <InfantryBases.scad>
include <Supports.scad>

// Create the tray base and support pillars in a module, so that
// we can use Difference to carve out the holes for the bases and the bottom of the support pillars.
tray_width = 200;
tray_length = 170;
tray_height = 3;
module Tray()
{
    cube([tray_width, tray_length, tray_height]);

    // Add in the four supports in the corners.
    translate([10, 10, tray_height])
        SupportTop();

    translate([10, tray_length-10, tray_height])
        SupportTop();

    translate([tray_width-10, 10, tray_height])
        SupportTop();

    translate([tray_width-10, tray_length-10, tray_height])
        SupportTop();
}

difference()
{
    // This defines the tray base.
    Tray();

    // First row - small command base.
    translate([83.7, 37.6, tray_height-2])
        SmallBase(tray_height-1);

    // Second row - three medium bases.
    translate([22.1, 65.2, tray_height-2])
        MediumBase(tray_height-1);
    translate([74.7, 65.2, tray_height-2])
        MediumBase(tray_height-1);
    translate([127.3, 65.2, tray_height-2])
        MediumBase(tray_height-1);

    // Third row - three medium bases.
    translate([22.1, 99.8, tray_height-2])
        MediumBase(tray_height-1);
    translate([74.7, 99.8, tray_height-2])
        MediumBase(tray_height-1);
    translate([127.3, 99.8, tray_height-2])
        MediumBase(tray_height-1);

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

