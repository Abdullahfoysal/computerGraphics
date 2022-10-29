void main() {
  //direct use of line equation
  //if m<=1
  //find y=mx+b
  //b= y-mx
}
directUseOfLineEquation(int x1, int y1, int x2, int y2) {
  double m = (y2 - y1) / (x2 - x1);
  double b = y1 - (m * x1); //from y=mx+b
  int x = x1;
  int y = y1;
  if (m <= 1) {
    while (x <= x2) {
      y = getY(m, x, b);
      setPixel(x, y);
      x++;
    }
  } else {
    while (y <= y2) {
      x = getX(m, y, b);
      setPixel(x, y);
      y++;
    }
  }
}

setPixel(int x, int y) {
  print("($x,$y)");
}

int getY(double m, int x, double b) {
  return (m * x + b).floor();
}

int getX(double m, int y, double b) {
  return ((y - b) / m).floor();
}
