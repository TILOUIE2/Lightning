int startX = 250;
int startY = 50;
int endX = 250;
int endY = 50;

void setup(){
  background(232, 232, 232);
  size(500,500);
  strokeWeight(5);
  fill(160, 170, 175);
  stroke(160, 170, 175);
  quad(235, 30, 265, 30, 290, 50, 210, 50);
  quad(245, 30, 255, 30, 255, 0, 245, 0);
  
  fill(150, 120, 60);
  noStroke();
  //head
  ellipse(200, 200, 50, 50);
  ellipse(300, 200, 50, 50);
  ellipse(250, 250, 150, 150);
  //body
  bezier(260, 260, 150, 400, 150, 460, 260, 460);
  bezier(240, 260, 350, 400, 350, 460, 240, 460);
  //legs
  ellipse(230, 475, 30, 100);
  ellipse(270, 475, 30, 100);
  //tail
  fill(120, 100, 10);
  ellipse(250, 425, 30, 30);
}

void draw(){
  while (endY <= 500){
  stroke((int) (Math.random() * 50) + 100, (int) (Math.random() * 50) + 100, (int) (Math.random() * 125) + 200);
  endX = startX + (int) (Math.random() * 60) - 29;
  endY = startY + (int) (Math.random() * 20);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  endX = startX + (int) (Math.random() * 60) - 29;
  endY = startY + (int) (Math.random() * 20);
  startX = endX;
  startY = endY;
  endX = startX + (int) (Math.random() * 60) - 29;
  endY = startY + (int) (Math.random() * 20);
  startX = endX;
  startY = endY;
  }
}

void mousePressed(){
  startX = 250;
  startY = 50;
  endX = 250;
  endY = 50;
}
