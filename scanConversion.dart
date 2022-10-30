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

digitalDifferentialAnalyzer(double x1,double y1,double x2,double y2){
  double m =(y2-y1)/(x2-x1);
 
  if(m<=1){
    while(x1<=x2){
      setPixel(x1.round(),y1.round());
      y2=y1+m;
      y1=y2;
      x1++;
    }
  }else{
    while(y1<=y2){
      setPixel(x1.round(),y1.round());
      x2=x1+(1/m);
      x1=x2;
      y1++;
      
    }
  }
}

bresenhamLineAlgorithm(int x1,int y1,int x2,int y2){
  int dx =x2-x1;
  int dy =y2-y1;
  int p=(2*dy)-dx;
  int x=x1;
  int y=y1;
  
  
  
  while(x<=x2){//dx>dy | m<=1
    
    setPixel(x,y);
    x++;
    if(p<0){
      p=p+(2*dy);
    }else{
      p=p+(2*dy)-(2*dx);
      y++;
    }
    
  }
  
  
}

bresenhamCircleAlgorithm(int cx,int cy,int r){
  int x=cx;
  int y=r;
  int p =3-(2*r);
  while(x<=y){
    setPixel(x,y);
    
    if(p<0){
      p=p+(4*x)+6;
    }else{
      p=p+(4*(x-y))+10;
      y--;
    }
    x++;
  }
  
}

