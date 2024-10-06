include <Tray.scad>

tray_width = 200;
tray_length = 170;
tray_height = 3;

difference()
{
    cube([tray_width, tray_length, tray_height]);
    
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