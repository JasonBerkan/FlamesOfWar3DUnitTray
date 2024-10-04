module SupportBottom()
{
    cylinder(h=4, r=6, $fn=50);
}

module SupportTop()
{
    cylinder(h=40, r=8, $fn=50);
    translate([0, 0, 40])
        cylinder(h=3.9, r=5.9, $fn=50);
}

// Create the tray base and support pillars in a module, so that we can use
// Difference to carve out the holes for the bases and the bottom of the support pillars.
module Tray(tray_width, tray_length, tray_height)
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