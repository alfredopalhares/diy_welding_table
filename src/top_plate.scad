/*
 Top Plate where the tools get fixed to
 */

module top_plate(height, width, thinkness, hole_radius) {

  // This avoids some silly green on the cut operation
  hole_height = thinkness + 2;

  difference() {
    cube([ width, height, thickness]);
      for ( i = [40 : 100 : width - 20]) {
        for ( j = [40 : 100 : height - 20]) {
        // Move to minus one because of the green
          translate([ i,j,-1]) {
            cylinder(15, hole_radius, hole_radius);
          }
        }
      }
  }
}
