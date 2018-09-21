int lightningCounter = 0;

void setup(){
  size(500,500);
  background(0);
}

void draw(){
  int x = 250;
  int y = 250;
  randomWalk(x,y);
  
  stroke(0);
  fill(#C9C9C9);
  
  rect(245, 250, 10, 250);
  ellipse(250, 250, 50, 50);
  lightningCounter++;
  
  if(lightningCounter == 10){
    background(0);
    lightningCounter = 0;
  }
}

void mousePressed(){

}

void randomWalk(int x,int y){
  int newX;
  int newY;
  int redValue;
  int greenValue;
  int blueValue;
  boolean addOrSubtractX = addOrSubtract();
  boolean addOrSubtractY = addOrSubtract();
  
  while(x > 50 && x < 451 && y > 50 && y < 451){
    if(addOrSubtractX == true){
        newX = x + (int)(Math.random()*25);
      } else {
        newX = x - (int)(Math.random()*25); 
      }
      
     if(addOrSubtractY == true){
        newY = y + (int)(Math.random()*25);
      } else {
        newY = y - (int)(Math.random()*25);
      }
      
      redValue = (int)(Math.random() * 256);
      greenValue = (int)(Math.random() * 256);
      blueValue = (int)(Math.random() * 256);
      
      strokeWeight(2);
      
      stroke(redValue, greenValue, blueValue);
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
