void setup(){
  size(500,500);
  
}
int birdX = 250;
int birdY = 250;
int birdYVelocity = 60; 
int pipeXVelocity = 30;
int pipeX = 400;
int gravity = -3;
void draw(){
  //Bird
  birdY -= gravity;
 background(0, 200,255); 
 fill(250,250,0);
 stroke(255,255,255);
 ellipse(birdX,birdY, 50,50);
 //Pipe
 fill(0,250,0);
 stroke(255,255,255);
 rect(400,pipeX, 70, 200);
 
}
void mousePressed(){
  if (true) { 
    birdY -=birdYVelocity;
  }
  } 