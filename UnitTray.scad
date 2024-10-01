include <InfantryBases.scad>

tray_width = 200;
tray_length = 170;
tray_height = 3;
difference()
{
    // This defines the tray base.
    cube([tray_width, tray_length, tray_height]);
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
}