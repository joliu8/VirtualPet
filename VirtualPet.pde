import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

float cx = 150;
float cy = 200; 
int r = 100;
int ry = 100;
float t = 0;
int leftButton = 0;
int rightButton = 0;

void setup()
{
size(500,500);
smooth(4);
arduino = new Arduino(this, Arduino.list()[1], 57600);
}
void draw()
{
  int y = arduino.analogRead(5);
    if (y > 105) {
    y = 105;
  }
  int r = arduino.analogRead(5);
  int g = arduino.analogRead(5);
  int b = arduino.analogRead(5);
  leftButton = arduino.analogRead(6);
  rightButton = arduino.analogRead(1);
  
  System.out.println(r);
  background(r,0,0);
  
  // left arm
  noStroke();
  fill(255, 204, 239);
  rect(70,300,150,20);

  // right arm
  noStroke();
  fill(255, 204, 239);
  rect(230,300,100,20);

  // left leg
  noStroke();
  fill(255, 204, 239);
  rect(150,300,20,150);

  // right leg
  noStroke();
  fill(255, 204, 239);
  rect(210,300,20,150);

  //body
  strokeWeight(10);
  stroke(224, 108, 108);
  fill(232, 121, 121);
  triangle(200,250,70,400,300,400);

  //left ear
  strokeWeight(7);
  stroke(255,161,213);
  fill(255, 204, 239);
  ellipse(165,80,40,70);

  //right ear
  strokeWeight(7);
  stroke(255,161,213);
  ellipse(240,80,40,70);
  fill(255, 204, 239);

  //triangle
  strokeWeight(7);
  stroke(255,161,213);
  fill(255, 204, 239);
  triangle(80,100,220,99,150,175);

  //big circle
  strokeWeight(7);
  stroke(255,161,213);
  fill(255, 204, 239);
  ellipse(195,195,200,200);

  //small circle
  strokeWeight(7);
  stroke(255,161,213);
  fill(255, 204, 239);
  ellipse(70,150,100,100);


  //left eye
  strokeWeight(7);
  stroke(255,161,213);
  fill(255,255,255);
  ellipse(150,150,25,30);

  //right eye
  strokeWeight(7);
  stroke(255,161,213);
  fill(255,255,255);
  ellipse(200,150,25,30);

  //cheek
  noStroke();
  fill (255,161,213);
  ellipse(250,200,55,55);
  
  //mouth
  stroke(255, 148, 193);
  strokeWeight(7);
  fill(0, 0, 0);
  arc(165, 230, 60, 70, 0, PI+QUARTER_PI, CHORD);

  //nostrils
  noStroke();
  fill (255,161,213);
  ellipse(70,150,20,20);
  ellipse(40,150,20,20);
  
  //pupils
  fill(0,0,0);
  ellipse(150,150+y,10,10);
  ellipse(200,150+y,10,10);
  
  //pink triangle
  fill(255, 204, 239);
  triangle(99,105,165,104,124,133);
  
 //fire
  //fill(255, 132, 0);
  if(leftButton >= 500) {
    fill(0, 247, 255);
  }
  else { 
    fill(255, 132, 0);
  }
  ellipse(70,275,30,40);
  ellipse(330,275,30,40);
  //fill(255, 251, 3);
  if(rightButton >= 500) {
    fill(209, 254, 255);
  }
  else { 
    fill(255, 251, 3);
  }
  ellipse(70,275,20,30);
  ellipse(330,275,20,30);
}
