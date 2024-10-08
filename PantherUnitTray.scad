include <Tray.scad>
include <TankBases.scad>

tray_width = 200;
tray_length = 170;
tray_height = 3;

difference()
{
    // This defines the tray base and as the first piece added to difference, it will define
    // the solid part of the tray base.
    Tray(tray_width, tray_length, tray_height);

    // Everything defined after the above call to Tray() will be cut out of the tray.
    row1 = 50;
    row2 = 60;
    
    column1 = 40.5;
    column2 = 83.5;
    column3 = 126.5;

    translate([column1, row2, tray_height-2])
        PantherTankBase(tray_height-1);
    translate([column2, row1, tray_height-2])
        PantherTankBase(tray_height-1);
    translate([column3, row2, tray_height-2])
        PantherTankBase(tray_height-1);

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

