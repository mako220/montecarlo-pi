float r = 300;
long total = 0;
long circle = 0;
double pi;
void setup()
{
  size(610,610);
  background(0);
  translate(width/2,height/2);
  stroke(255);
  strokeWeight(4);
  noFill();
  ellipse(0,0,r*2,r*2);
  rectMode(CENTER);
  rect(0,0,r*2,r*2);
}

void draw()
{

  translate(width/2,height/2);
  for(int i = 1; i < 100; i++)
  {
    float x = random(-r,r);
    float y = random(-r,r);
    total++;
    float dist = (x*x) + (y*y);
    if(dist <= r*r)
    {
      circle ++;
      stroke(0,255,0);
      point(x,y);
    }
    else
    {
      stroke(0,0,255);
      point(x,y);
    }
    pi = 4 * ((double)circle/total);
  }
  println(pi);
}
