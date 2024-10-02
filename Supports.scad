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