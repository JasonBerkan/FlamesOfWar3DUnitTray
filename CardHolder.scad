// The unit cards are 11cm x 8cm in size.
// What we want are just the corners of a rectangle that is larger than that.
module CardHolder(height)
{
    difference()
    {
        // Make the main cube 2mm bigger on each side than 110 x 80.
        cube([114, 84, height]);

        // Then cut out the middle, leaving a 1.5mm edge around the base.
        translate([1.5, 1.5, 0])
            cube([111, 81, height]);

        translate([12, 0, 0])
            cube([90, 85, height]);

        translate([0, 12, 0])
            cube([115, 60, height]);
    }
}