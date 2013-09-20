include <tubing.scad>;

square_tube(1000, 20, 20, 1);
rotate(a = [0, 90, 0]) {
  square_tube(2000, 20, 20, 1);
}
translate([2000, 0, 0]) {
  square_tube(1000, 20, 20, 1);
}

translate([0, 1000, 0]) {
  square_tube(1000, 20, 20, 1);
  rotate(a = [0, 90, 0]) {
    square_tube(2000, 20, 20, 1);
  }
  rotate(a = [90, 0, 0]) {
    square_tube(1000, 20, 20, 1);
  }
}
translate([2000, 1000, 0]) {
  square_tube(1000, 20, 20, 1);
  rotate(a = [90, 0, 0]) {
    square_tube(1000, 20, 20, 1);
  }
}
