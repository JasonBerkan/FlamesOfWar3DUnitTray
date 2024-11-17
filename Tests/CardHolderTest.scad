include <..\CardHolder.scad>

cube([120, 90, 1]);
translate([3, 3, 0]) {
  CardHolder(8);
}