

void setup()
{
size(500,500);
}
void draw()
{

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
  ellipse(150,150,10,10);
  ellipse(200,150,10,10);
  
  //pink triangle
  fill(255, 204, 239);
  triangle(100,105,165,105,124,133);
}
