Spaceship ship = new Spaceship();
Stars[] nightSky = new Stars[200];
//Bullet amu = new Bullet(ship);
//Asteroid[] rock = new Asteroid[20];

ArrayList <Asteroids> rock = new ArrayList <Asteroids> ();
ArrayList <Bullet> amu = new ArrayList <Bullet> ();

public void setup() 
{
	size(500,500);
	for (int i = 0; i < nightSky.length; i++)
	{
		nightSky[i] = new Stars();
	}

  for (int i = 0; i < 25; i++)
  {
    rock.add(new Asteroids());
  }

  for (int i = 0; i < amu.size(); i++)
  {
    //amu.add
  }
  	
}

public void draw() 
{
	background(0);
	for (int i = 0; i < nightSky.length; i++)
	{
		nightSky[i].show();
	}

  for(int i = 0; i < rock.size(); i++)
  {
    rock.get(i).show();
    rock.get(i).move();
    if (dist(ship.getX(), ship.getY(), rock.get(i).getX(), rock.get(i).getY()) < 20)
    {
      rock.remove(i);
    }

    for(int j = 0; j < amu.size(); j++)
    {
      if(dist(amu.get(j).getX(),amu.get(j).getY(), rock.get(i).getX(), rock.get(i).getY()) < 20)
      {
        rock.remove(i);
        amu.remove(j);
        break;
      }
    }
  }

  for(int i = 0; i < amu.size(); i++)
  {
    amu.get(i).show();
    amu.get(i).move();
  }

if (rock.size() < 20)
{
  rock.add(new Asteroids());
}

	ship.show();
  ship.move();

  



}

public void keyTyped()
  {
  	if (key == 'w') {ship.accelerate(.05);}
  	if (key == 'a') {ship.turn(-5);}
  	if (key == 'd') {ship.turn(5);}
  	if (key == 's')

  	{
  		ship.setX((int)(Math.random() * width));
  		ship.setY((int)(Math.random()* height));
  		ship.setPointDirection((int)(Math.random() * 360));
  		ship.setDirectionX(0);
  		ship.setDirectionY(0);

  	}
    if (key == 'q'){amu.add(new Bullet(ship));}
  }
