int frogX = 400;
int frogY = 300;
int testfrogX = 0;
int testfrogY = 0;
int testfrogNegativeY = 0;
int testfrogNegativeX = 0;
void setup(){
 size(800,600); 
}
void draw(){
  background(100,100,100);
  fill(10,100,13);
  ellipse(frogX,frogY, 50, 50);
   testfrogNegativeY = frogY + 1;
   testfrogY = frogY - 1;
    testfrogNegativeX = frogX + 1;
   testfrogX = frogX - 1;
}

void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  //Frog Y position goes up
        
                  if (testfrogY > 0 ){
                   frogY = frogY -30; 
                  }
            }
            else if(keyCode == DOWN)
            {
                  //Frog Y position goes down
                 
                  if (testfrogNegativeY < 600 ){
                    frogY += 30;
                  }
            }
            else if(keyCode == RIGHT)
            {
                  //Frog X position goes right
               if (testfrogX < 800 ){
                    frogX += 30;
                  }
            }
            else if(keyCode == LEFT)
            {
                  //Frog X position goes left
                 if (testfrogNegativeX > 0 ){
                    frogX = frogX - 30;
                  }
            }
      }
}