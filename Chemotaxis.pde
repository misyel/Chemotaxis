//declare bacteria variables here  
Bacteria [] colony; 
void setup()   
{     
  size(500, 500);
  colony = new Bacteria[10];
  for (int i=0; i<colony.length; i++){
  	colony[i] = new Bacteria();
  }
  //initialize bacteria variables here
}   
void draw()   
{    
  background(0);
  //bacteria = new Bacteria(250, 250);
  for (int i=0; i<colony.length; i++){
  	colony[i].move();
  	colony[i].show();}
    //move and show the bacteria
}  
int myX;
int myY;
int myColor;
int direction;
class Bacteria    
{  
  Bacteria() {
    myX = 200;
    myY = 200;
    //direction = (int)(Math.random()*4);
  }
  void move() {
  	//myX = myX + (int)(Math.random()*5)-2;
  	//myY = myY + (int)(Math.random()*5)-2;
    if (direction == 0) {
      myX = myX + (int)(Math.random()*5)-2; //right
    } else if (direction == 1) {
      myX = myX - (int)(Math.random()*5)-2; //left
    } else if (direction == 2) {
      myY = myY + (int)(Math.random()*5)-2; //down
    } else {
      myY = myY - (int)(Math.random()*5)-2;
    }
    }   
    void show() {
      fill(255, 0, 0);
      ellipse(myX, myY, 10, 10);
    }
    //lots of java!
   
}