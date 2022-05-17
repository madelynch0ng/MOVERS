Mover[] movers;
int n = 50;

void setup() {
  fullScreen();
  stroke(2);
  colorMode(HSB);
  
  movers = new Mover[n];

  int i = 0;
  while ( i <  n ) {
    movers [i] = new Mover();
    i++;
  }
}


void draw (){
 int i = 0; 
 while ( i < n){
   movers[i]. act();
   movers[i].show();
   i++;
 }
}
