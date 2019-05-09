void setup(){
  size(500,500);

}
int birdX = 250;
int birdY = 250;
int birdYVelocity = 60; 
int pipeXVelocity = 30;
int pipeX = 400;
double gravity = 0;
boolean flapping = false;
float pipe1length = random(100,200);
float pipe2length = 400 - pipe1length;
void draw(){
  //Bird
  if (flapping = true){
    if (gravity >= -7){
    gravity -= 0.1;
    }
    else{
     gravity = 1; 
    }
    if (gravity >= 7){
    gravity = -1;
} 
  birdY -= gravity;
  ;
  }
 background(0, 200,255); 
 fill(250,250,0);
 stroke(255,255,255);
 ellipse(birdX,birdY, 30,20);
 //Pipe
 if (pipeX <= 0){
  pipeX = 500; 
  pipe1length = random(100,300);
  pipe2length = 400 - pipe1length;
 }
 pipeX -= 3;
 fill(0,250,0);
 stroke(255,255,255);
 rect(pipeX, 0, 50, pipe1length);
 rect(pipeX, 500 - pipe2length, 50, pipe2length);

}
void mousePressed(){
  if (true) { 
    
    flapping = false;
    gravity += 3;
  }
  } 