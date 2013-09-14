/*
 * Tubing module
 */

module square_tube(lenght, width, height, thickness)
{
  difference() {
    cube([height, width, lenght]);
    translate([thickness, thickness, -1]) {
      cube([height - thickness * 2, width - thickness * 2, lenght + 2 ]);
    }
  }
}
