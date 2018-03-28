ArrayList<crawler> myList = new ArrayList<crawler>(); // the parentheses at the end call the constructor of the class.
// arrayLists can dynamically change in size, unlike normal arrays.

void setup()
{
  size(500, 500);

  for (int i = 0; i < 300; i++)
  {
    crawler myBoi = new crawler(random(width), random(height)); // now we have exactly one crawler.
    myList.add(myBoi);
  }
}

void draw()
{
  rectMode(CORNER); // set it back tot he corner mode, instead of from the center.
  fill(0, 10); // black background
  rect(0,0, width, height);
  
  for (int i = 0; i < myList.size(); i++)
  {
     myList.get(i).show();
     myList.get(i).move();
  }
  
}

class crawler
{

  float x;
  float y;
  float thisSize;
  float noiseLocation = random(0, 10000);
  float thisColor = random(50, 255);

  // there's a difference between random and noise curves.
  
  public crawler(float xPos, float yPos)
  {
    x = xPos;
    y = yPos;
  }
  

  void move()
  {
    
    if (noise(noiseLocation)<0.35) x -=5;
    else if (noise(noiseLocation)<0.5) y+=5;
    else if (noise (noiseLocation) < 0.65) x+=5;
    else y-=5;
    
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
      thisSize = map(dist(x, y, width/2, height/2), 0, 150, 10, 3);
    } else thisSize = 3;

    noStroke(); // takes off the outline on the shape. it looks better without it.
    rectMode(CENTER); // draw the rectangle from the center.

    rect(x, y, thisSize, thisSize);
  }
}

// interactive computing
// craig kapp
