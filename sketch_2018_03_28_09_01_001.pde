void setup()
{
  size(500, 500);
}

void draw()
{
}

class crawler
{

  float x;
  float y;
  float thisSize;
  float noise Location;

  // there's a difference between random and noise curves.

  void pickle()
  {
    if (x > width)
    {
      x = 0;
    }

    if (x < 0 )
    {
      x = width;
    }

    if (y > height) y = 0;
    if (y < 0) y = height;


    noiseLocation += 0.1;
  }
  
  void show()
  {
    fill(thisColor);
    
    if (dist(x,y,width/2,height/2)<150)
    {
      thisSize = map(dist(ex,y,width/2, height/2), 0, 150, 10, 3);
    }
    
    else thisSize = 3;
    
    noStroke(); // takes off the outline on the shape. it looks better without it.
    
  }
  
}
