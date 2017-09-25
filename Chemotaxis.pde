//declare bacteria variables here  
Bacteria [] colony; 
void setup()   
{     
  size(500, 500);
  frameRate(25);
  background(0);
  colony = new Bacteria[150];
  for (int i=0; i<colony.length; i++){
  	colony[i] = new Bacteria();
    colony[i].show();
  }
  //initialize bacteria variables here
}   
void draw()   
{    
  background(0);
  for (int i=0; i<colony.length; i++){
  	colony[i].move();
  	colony[i].show();
  }
    //move and show the bacteria
}  

class Bacteria    
{  
  int myX;
  int myY;
  int myColor;
  int mX,mY;
  Bacteria() {
  	myX = (int)(Math.random()*501);
 	  myY = (int)(Math.random()*501);
    mX = 250;
    mY = 250;
  }
  void move() {
    if(mouseX < myX){
      mX = 0;
    }
    else{
      mX = 9;
    }
    if (mouseY < myY){
      mY = 0;
    }
    else{
      mY = 9;
    }
    if (mousePressed == true){
      myY = 250;
      myX = 250;
    }
  	myX = myX + (int)(Math.random()*5)-mX;
  	myY = myY + (int)(Math.random()*5)-mY;
    }   
    void show() {
      noStroke();
      //cookies
      fill(118,92,67);
      ellipse(myX, myY, 50, 50);
      fill(0);
      ellipse(myX-10,myY,5,5);
      ellipse(myX,myY-15,5,5);
      ellipse(myX,myY,5,5);
      ellipse(myX+10,myY-5,5,5);
      ellipse(myX+10,myY+15,5,5);
      ellipse(myX-15,myY+15,5,5);
      //cookie monster
      fill(122,201,89);
      ellipse(mouseX,mouseY,140,90);
      fill(255);
      ellipse(mouseX+30,mouseY-60,60,60);
      ellipse(mouseX-30,mouseY-60,60,60);
      fill(0);
      ellipse(mouseX+30,mouseY-60,20,20);
      ellipse(mouseX-30,mouseY-60,20,20);
    }
    //lots of java!
   
}