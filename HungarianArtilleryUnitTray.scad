include <Tray.scad>
include <GunBases.scad>
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
    row1 = 15.2;
    row2 = 90;
    
    column1 = 28.8;
    column2 = 120.4;

    // First row - one small command base, one small AT base and one medium HMG base.
    translate([column1, row1, tray_height-2])
        LargeGunBase(tray_height-1);
    translate([column2, row1, tray_height-2])
        LargeGunBase(tray_height-1);

    // Second row - three medium bases.
    translate([column1, row2, tray_height-2])
        LargeGunBase(tray_height-1);
    translate([column2, row2, tray_height-2])
        LargeGunBase(tray_height-1);

    // For this tray, we'll put the Toldi OP in the middle.
    // My Toldi OP is a bit smaller than my other Toldi's, so need to adjust the size smaller.
    translate([89.6, 66.35, tray_height-2])
        ToldiTankBase(-0.5, 0, 2);

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

