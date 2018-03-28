ArrayList<Crawler> myList = new ArrayList<Crawler>(); // the parentheses at the end call the constructor of the class.
// arrayLists can dynamically change in size, unlike normal arrays.

void setup()
{
  size(500, 500);

  for (int i = 0; i < 300; i++)
  {
    Crawler myBoi = new Crawler(random(width), random(height)); // now we have exactly one crawler.
    myList.add(myBoi);
  }
}

void draw()
{
  rectMode(CORNER); // set it back tot he corner mode, instead of from the center.
  fill(0); // black background
}

class crawler
{

  float x;
  float y;
  float thisSize;
  float noise Location;

  // there's a difference between random and noise curves.

  void move()
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

    if (dist(x, y, width/2, height/2)<150)
    {
      thisSize = map(dist(ex, y, width/2, height/2), 0, 150, 10, 3);
    } else thisSize = 3;

    noStroke(); // takes off the outline on the shape. it looks better without it.
    rectMode(CENTER); // draw the rectangle from the center.

    rect(x, y, thisSize, thisSize);
  }
}
