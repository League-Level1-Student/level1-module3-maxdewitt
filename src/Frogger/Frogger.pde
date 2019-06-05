int frogX = 400;
int frogY = 300;
int testfrogX = 0;
int testfrogY = 0;
int testfrogNegativeY = 0;
int testfrogNegativeX = 0;
boolean frogHit = false;
boolean frogHit2 = false;
boolean frogHit3 = false;
car car1 = new car(100,100,50,7);
car car2 = new car(100,300,55,3);
car car3 = new car(100,200,30,17);
void setup(){
 size(800,600); 
}
void draw(){
  background(100,100,100);
  //FROG
  fill(10,100,13);
  ellipse(frogX,frogY, 10, 10);
   testfrogNegativeY = frogY + 1;
   testfrogY = frogY - 1;
    testfrogNegativeX = frogX + 1;
   testfrogX = frogX - 1;
   
   car1.display();
   car2.display();
   car3.display();
   car1.moveleft();
   car2.moveright();
   car3.moveright();
   frogHit = intersects(car1);
   frogHit2 = intersects(car2);
   frogHit3 = intersects(car3);
   if (frogHit == true){
     frogX = 400;
     frogY = 600;
   }
    if (frogHit2 == true){
     frogX = 400;
     frogY = 600;
   }
    if (frogHit3 == true){
     frogX = 400;
     frogY = 600;
   }
   
   
}
boolean intersects(car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else
      {
             return false;
      }
}   
      
  class car{
    float getSize(){
     return carSize; 
    }
    float getY(){
     return carY; 
    }
    float getX(){
     return carX; 
    }
    void moveleft(){
     carX = carX - carSpeed; 
     if (carX < 0){
      carX = 800; 
     }
    }
    void moveright(){
     carX = carX + carSpeed;
     if (carX > 800){
       carX = 0;
    }
    }
    void display()
{
      fill(0,255,0);
      rect(carX , carY, carSize + 100, carSize);
}
float carX = 0;
float carY = 0;
float carSize;
float carSpeed;
public car(float x, float y, float size, float speed){
  this.carX = x;
  this.carY = y;
  this.carSize = size;
  this.carSpeed = speed;
}
  

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