include <tubing.scad>;

height = 1000;
lenght = 2000;
width = 1500;

tube_size = 20;
tube_thickness =1;

// Left corner
square_tube(height, tube_size, tube_size, tube_thickness);
// need to translate the tube size so the tubing does not overlap
translate([tube_size, 0, tube_size]) {
  rotate(a = [0, 90, 0]) {
    // Kinda obvious but if you dont subtract tube size it will overlap
    square_tube(lenght - tube_size, tube_size, tube_size, tube_thickness);
  }
}
translate([lenght, 0, 0]) {
  square_tube(height, tube_size, tube_size, tube_thickness);
}

translate([0, width, 0]) {
  square_tube(height, tube_size, tube_size, tube_thickness);
  translate([tube_size, 0, tube_size]) {
    rotate(a = [0, 90, 0]) {
      square_tube(lenght - tube_size, tube_size, tube_size, tube_thickness);
    }
  }
  rotate(a = [90, 0, 0]) {
    square_tube(width - tube_size, tube_size, tube_size, tube_thickness);
  }
}
translate([lenght, width, 0]) {
  square_tube(height, tube_size, tube_size, tube_thickness);
  rotate(a = [90, 0, 0]) {
    square_tube(width - tube_size, tube_size, tube_size, tube_thickness);
  }
}
