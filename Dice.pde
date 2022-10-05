int Totalsum;
int sum;

void setup(){
  size(600, 600);
  noLoop();
  textAlign(CENTER);
}

void mousePressed(){
  Totalsum = 0;
  redraw();
}

class Die{
 
  int a;
 
  Die(int x, int y){
    a = (int)(Math.random()*6+1);
    fill((float)Math.random()*255 + 1, (float)Math.random()*255 + 1, (float)Math.random()*255 + 1);
    stroke((float)Math.random()*255 + 1, (float)Math.random()*255 + 1, (float)Math.random()*255 + 1);
    beginShape();
    curveVertex(x, y);
    curveVertex(x, y);
    curveVertex(x + 60, y);
    curveVertex(x + 60, y + 60);
    curveVertex(x, y + 60);
    curveVertex(x, y);
    curveVertex(x, y);
    endShape();
  }
 
   void RollandShow(int x, int y){
     sum = 0;
     fill(0);
     if(a == 1 || a == 3 || a == 5){
       ellipse(x + 30, y + 30, 10, 10);
     }
     if(a == 6){
       ellipse(x + 15, y + 30, 10, 10);
       ellipse(x + 45, y + 30, 10, 10);
     }
     if(a == 2 || a == 3 || a == 4 || a == 5 || a == 6){
       ellipse(x + 15, y + 15, 10, 10);
       ellipse(x + 45, y + 45, 10, 10);
     }
     if(a == 4 || a == 5 || a == 6){
       ellipse(x + 45, y + 15, 10, 10);
       ellipse(x + 15, y + 45, 10, 10);
     }
     if(a == 1){
       sum = sum + 1;
     }
     if(a == 2){
       sum = sum + 2;
     }
     if(a == 3){
       sum = sum + 3;
     }
     if(a == 4){
       sum = sum + 4;
     }
     if(a == 5){
       sum = sum + 5;
     }
     if(a == 6){
       sum = sum + 6;
     }
   }
}

Die Dice;

void draw(){
    background(150);
    for(int i = 0; i < 6; i = i + 1){
      for(int ii = 0; ii < 6; ii = ii + 1){
        Dice = new Die(100*i + 20, 100*ii + 20);
        Dice.RollandShow(100*i + 20, 100*ii + 20);
        Totalsum+= sum;
      }
    }
    if(Totalsum > 126){
      background(0);
      fill(255);
      textSize(200);
      fill((float)Math.random()*255 + 1, (float)Math.random()*255 + 1, (float)Math.random()*255 + 1);
      text("Bang!", 300, 350);
    }
    textSize(17);
    fill(255);
    text("The Total Sum is " + Totalsum, 300, 600);
}
