class Mover {
  //instance variables 
  float x, y, vx, vy ;
  float c; 
  float size;

  //constructor
  Mover() {
    // randommize everything
    x = width/2;
    y= height/2 ;
    vy = random (-5, 5);
    vx = random ( -5, 5);
    size = random ( 5 , 50);
    c = random ( 0,255);
  }

  void act() {
    x += vx;
    y += vy;
        c= (c + 50) %255;
        if ( c > 255) {
          
          c = 0;
          
        }


    // bounce
    if ( y < 0|| y > height) {
      vy = vy * -1;
    }

    if ( x < 0|| x > width) {
      vx = vx * -1;
    }
  }

  void show() {
    fill (c, 255,255);
    square( x, y, size);

  }
}
