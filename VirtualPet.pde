

void setup()
{
size(500,500);
}
void draw()
{
  //horizontal line
  line(0,250,500,250);
  
  //vertical line
  line(250,0,250,500);
  
  //body
fill(232, 121, 121);
triangle(200,250,70,400,300,400);

  //big circle
noStroke();
fill(255, 204, 239);
ellipse(195,195,200,200);

//small circle
noStroke();
fill(255, 204, 239);
ellipse(70,150,100,100);

//triangle
noStroke();
fill(255, 204, 239);
triangle(80,100,230,99,150,175);

//left ear
ellipse(165,80,40,70);

//right ear
ellipse(240,80,40,70);

//left eye
fill(255,255,255);
ellipse(150,150,20,25);

//right eye
fill(255,255,255);
ellipse(200,150,20,25);

//cheek
fill (255,161,213);
ellipse(250,200,55,55);

//mouth
fill(255, 161, 213);
arc(165, 225, 60, 60, 0, PI+QUARTER_PI);

//arm
rect(100,150,200,270);

}
