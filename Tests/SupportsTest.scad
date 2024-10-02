include <..\InfantryBases.scad>
include <..\Supports.scad>

tray_width = 20;
tray_length = 50;
tray_height = 3;
module Tray()
{
    cube([tray_width, tray_length, tray_height]);

    // Add in the four supports in the corners.
    translate([10, 10, tray_height])
        SupportTop();

    translate([10, tray_length-10, tray_height])
        SupportTop();
}

difference()
{
    // Put in the tray base as the main solid part.
    Tray();

    // Using difference, put in the four holes on the bottom of the base for the supports to fit into.
    translate([10, 10, 0])
        SupportBottom();
    
    translate([10, tray_length-10, 0])
        SupportBottom();
}