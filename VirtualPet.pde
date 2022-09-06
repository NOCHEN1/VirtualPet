
void setup(){
  //a
}
void draw(){
  //more of your code here
}

caimport processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(400, 400);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}


public void draw() {
  background(0 , 150, 255);
  int y = arduino.analogRead(5);
  System.out.println(y);
  if (y > 250){
    y =250;
  }
  fill(0 ,255, 0);
  ellipse(120 ,250+y ,80, 20);
  ellipse(280 ,250+y ,80, 20);
  arc(150, 210+y, 100, 80, 0, 2 * PI);
  arc(250, 210+y, 100, 80, 0, 2 * PI);
  ellipse(230 ,70+y ,60, 120);
  ellipse(170 ,70+y ,60, 120);
  ellipse(200 ,170+y ,80 , 160);
  
  fill(255, 255, 255);
  ellipse(230 ,70+y ,60 , 70);
  ellipse(170, 70+y ,60 ,70);
  
  fill(0, 0 ,0);
  ellipse(230 ,60+y, 30, 30);
  ellipse(170 ,60+y, 30, 30);
  
  fill(0 ,255, 0);
  ellipse(200 ,110+y ,160, 110);
  ellipse(240 ,210+2*y ,40, 80+y);
  ellipse(160 ,210+2*y ,40, 80+y);
  ellipse(150 ,250+2*y ,40, 20+y);
  ellipse(250 ,250+2*y ,40, 20+y);
  arc(200, 110+y, 50, 20, 0 , PI);
}
