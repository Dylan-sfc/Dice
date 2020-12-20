void setup()
{
  size(600, 700);
  noLoop();
}
void draw()
{
  background(0);
  int dotSum =0;
  for (int x=11; x>=0; x--) {
    for (int y =11; y>0; y--) {
      Die g = new Die(x*50, y*50);
      g.roll();
      g.show();
      dotSum = dotSum + g.myRoll;
    }
  }
  fill(255);
  textAlign(CENTER);
  text(" Sum: " +dotSum, 300, 650);
}
void mousePressed()
{
  redraw();
}
class Die //modles one single dice cube
{
  int coordinateX;
  int coordinateY;
  int myRoll;
  Die(int x, int y)//constructor
  {
    coordinateX =x;
    coordinateY =y;
  }
  void roll()
  {
    myRoll= (int)(Math.random()*6+1);
  }
  void show()
  {
    rect(coordinateX, coordinateY, 50, 50);
    if (myRoll == 1) {
      fill(242,20,20);
      ellipse(coordinateX +25, coordinateY+25, 7, 7);
    } else if (myRoll==2) {
      fill(242, 20, 20);
      ellipse(coordinateX+10, coordinateY+10, 7,
        7);
      ellipse(coordinateX +40, coordinateY +40, 7,
        7);
    } else if (myRoll ==3) {
      fill(242, 20, 20);
      ellipse(coordinateX +25, coordinateY +25, 7, 7);
      ellipse(coordinateX +10, coordinateY +10, 7, 7);
      ellipse(coordinateX +40, coordinateY +40, 7, 7);
    } else if (myRoll ==4) {
      fill(242, 20, 20);
      ellipse(coordinateX +10, coordinateY +10, 7, 7);
      ellipse(coordinateX +40, coordinateY +40, 7, 7);
      ellipse(coordinateX +10, coordinateY +40, 7, 7);
      ellipse(coordinateX +40, coordinateY +10, 7, 7);
    } else if (myRoll ==5) {
      fill(242, 20, 20);
      ellipse(coordinateX +25, coordinateY +25, 7, 7);
      ellipse(coordinateX +10, coordinateY +10, 7, 7);
      ellipse(coordinateX +40, coordinateY +40, 7, 7);
      ellipse(coordinateX +10, coordinateY +10, 7, 7);
      ellipse(coordinateX +40, coordinateY +40, 7, 7);
    } else {
      fill(242, 20, 20);
      ellipse(coordinateX +10, coordinateY +10, 7, 7);
      ellipse(coordinateX +40, coordinateY +40, 7, 7);
      ellipse(coordinateX +40, coordinateY +40, 7, 7);
      ellipse(coordinateX +10, coordinateY +10, 7, 7);
      ellipse(coordinateX +25, coordinateY +25, 7, 7);
      ellipse(coordinateX +25, coordinateY +25, 7, 7);
    }
    fill(255, 255, 255);
  }
}






