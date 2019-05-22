void setup(){
  size(500,500);


}
int birdX = 250;
int birdY = 250;
int birdYVelocity = 60; 
int pipeXVelocity = 30;
int pipeX = 400;
int score = 0;
double gravity = 0;
boolean flapping = false;
float pipe1length = random(100,200);
float pipe2length = 400 - pipe1length;
boolean gameOver = false;
String gameOverText= "";
void draw(){
  //Bird
    if(gameOver == false){
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
  
  
 background(0, 200,255); 
 fill(250,250,0);
 stroke(255,255,255);

 ellipse(birdX,birdY, 30,28);
 //Pipe
 if (pipeX <= 0){
  pipeX = 500; 
  pipe1length = random(100,300);
  pipe2length = 400 - pipe1length;
  score++;
 }
 pipeX -= 5;
 
 

 fill(0,250,0);
 stroke(0,0,0);


 rect(pipeX, 0, 50, pipe1length);
 rect(pipeX, 500 - pipe2length, 50, pipe2length);
    }
 fill(0,0,0);
 stroke(255,255,255);
text("Score " + score ,300 , 30);
text(""+gameOverText, 245, 250);
 if(birdY > 500 - pipe2length  && birdX >= pipeX && birdX <= pipeX + 50){
    
   birdY = 250;
    gameOverText = "GAME OVER"; 
    gameOver = true;

 }
 if(birdX >= pipeX && birdX <= pipeX + 50 && birdY <= pipe1length ){
  
  birdY = 250; 
   gameOverText = "GAME OVER"; 
   gameOver = true;



 }


}
void mousePressed(){
  if (true) { 



    
    gravity += 3;
  }
  } 