int x = 150;
int y = 150;

void setup(){
  size(300,300);
}

void draw(){
  randomWalk(x,y);
  ellipse(150, 150, 30, 30);
}

void mousePressed(){

}

void randomWalk(int x,int y){
  int newX;
  int newY;
  boolean addOrSubtractX = addOrSubtract();
  boolean addOrSubtractY = addOrSubtract();
  
  if(addOrSubtractX == true){
      newX = x + (int)(Math.random()*100);
    } else {
      newX = x - (int)(Math.random()*100); 
    }
    
   if(addOrSubtractY == true){
      newY = y + (int)(Math.random()*100);
    } else {
      newY = y - (int)(Math.random()*100);
    }

if(newX > 0 || newY < 301){
    line(x, y, newX, newY);
    x = newX;
    y = newY;
  }
}

boolean addOrSubtract(){
  boolean result;
  int addOrSubtract = (int)(Math.random()*2);
  if (addOrSubtract == 0){
    return result = true;
  } else {
    return result = false;
  }
}