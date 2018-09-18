int x = 150;
int y = 150;

void setup(){
  size(300,300);
}

void draw(){
	randomWalk(x,y);
}

void mousePressed(){

}

void randomWalk(int x,int y){
	int newX = x + (int)(Math.random()*11);
	int newY = y + (int)(Math.random()*11);

	line(x, y, newX, newY);
}



