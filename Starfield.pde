Star field[];
Star2 field2[];
boolean hpsp = false;
boolean phase2 = false;
void setup() {
  background(0);
  size(800, 500);
  field = new Star[200];
  field2 = new Star2[200];
  for (int i = 0; i < field.length; i++) {
    field[i] = new Star();
  }
  for (int i = 0; i < field2.length; i++) {
    field2[i] = new Star2();
  }
}
void draw() {
  for (int i = 0; i < field.length; i++) {
    field[i].hyper();
    field[i].show();
    field2[i].hyper2();
    if ((int)(Math.random()*30) == 0){
      field2[i].show3();
      
    }else{
      field2[i].show2();
    }
  }
}
void keyPressed(){
  if (key == ' '){
    hpsp = true;
  }
}
class Star {
  double myX, myY, startX, startY;
  double size;
  double angle;
  double speed;
  int color1;
  Star() {
    color1 = (int)(Math.random()*60)+150;
    myX = (Math.random()*780)+10;
    myY = (Math.random()*480+10);
    startX = myX;
    startY = myY;
    speed = 0.1;
    size = (Math.random()*2)+1;
    angle = Math.atan((myY-250)/(myX-400));
  }
  void hyper() {

    

    if (hpsp == true){
    
      if (myX > 400) {
        myX += Math.cos(angle)*speed/200;
        myY += Math.sin(angle)*speed/200;
      }else{
        myX -= Math.cos(angle)*speed/200;
        myY -= Math.sin(angle)*speed/200;
      }
        speed *= 1.1;
  
  
      size += 0.001;
    }
  }
  void show() {
    if ((myX > 0 && myX < 800) || (myY > 0 && myY < 500)){
      fill(color1, color1 + 40, 255);
      noStroke();
      ellipse((float)myX, (float)myY, (float)size, (float)size);
      strokeWeight((float)size);
      stroke(color1, color1 + 40, 255);
      line((float)startX, (float)startY, (float)myX, (float)myY);
    }else{
      phase2 = true;
    }
  }
}

class Star2{
  double myX, myY, startX, startY;
  double size;
  double angle;
  double speed;
  int color1;
  Star2(){
    color1 = (int)(Math.random()*60)+150;
    myX = 400;
    myY = 250;
    startX = myX;
    startY = myY;
    speed = 0.1;
    size = (Math.random()*2)+1;
    angle = (int)(Math.random()*360);
  }
  void hyper2() {
    if (hpsp == true){
    
      if (myX > 400) {
        myX += Math.cos(angle)*speed/200;
        myY += Math.sin(angle)*speed/200;
      }else{
        myX -= Math.cos(angle)*speed/200;
        myY -= Math.sin(angle)*speed/200;
      }
        speed *= 1.1;
  
  
      size += 0.001;
    }
  }
  void show3() {
    if ((myX > 0 && myX < 800) || (myY > 0 && myY < 500)){
      if (phase2 == true){
        fill(0, 200, 0);
      }else{
        fill(0);
      }
      
      noStroke();
      ellipse((float)myX, (float)myY, (float)size, (float)size);
      strokeWeight((float)size);
      stroke(0, 200, 0);
      line((float)startX, (float)startY, (float)myX, (float)myY);
    }else{
      
      myX = 400;
      myY = 250;
      startX = myX;
      startY = myY;
      speed = 0.1;
      size = (Math.random()*2)+1;
      angle = (int)(Math.random()*360);
    }
  }
  void show2() {
    if ((myX > 0 && myX < 800) || (myY > 0 && myY < 500)){
      if (phase2 == true){
        fill(color1, color1 + 40, 255);
      }else{
        fill(0);
      }
      
      noStroke();
      ellipse((float)myX, (float)myY, (float)size, (float)size);
      strokeWeight((float)size);
      stroke(color1, color1 + 40, 255);
      line((float)startX, (float)startY, (float)myX, (float)myY);
    }else{
      
      color1 = (int)(Math.random()*60)+150;
      myX = 400;
      myY = 250;
      startX = myX;
      startY = myY;
      speed = 0.1;
      size = (Math.random()*2)+1;
      angle = (int)(Math.random()*360);
    }
  }
}
class bullets extends Star2 {
  bullets(){
    color1 = #88FF6F;
    myX = 400;
    myY = 250;
    startX = myX;
    startY = myY;
    speed = 0.1;
    size = (Math.random()*2)+1;
    angle = (int)(Math.random()*360);
  }
  void show3() {
    if ((myX > 0 && myX < 800) || (myY > 0 && myY < 500)){
      if (phase2 == true){
        fill(color1);
      }else{
        fill(0);
      }
      
      noStroke();
      ellipse((float)myX, (float)myY, (float)size, (float)size);
      strokeWeight((float)size);
      stroke(0, 200, 0);
      line((float)startX, (float)startY, (float)myX, (float)myY);
    }else{
      
      myX = 400;
      myY = 250;
      startX = myX;
      startY = myY;
      speed = 0.1;
      size = (Math.random()*2)+1;
      angle = (int)(Math.random()*360);
    }
  }
}
