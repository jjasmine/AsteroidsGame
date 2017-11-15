Spaceship bob;
Stars[] nightSky = new Stars[200];
Asteroids[] gob = new Asteroids[20];
public void setup() 
{
	size(500,500);
	for (int i = 0; i < nightSky.length; i++)
	{
		nightSky[i] = new Stars();
	}
  for (int i = 0; i < gob.length; i++)
  {
    gob[i] = new Asteroids();
  }
  	bob = new Spaceship();
}
public void draw() 
{
	background(0);
	for (int i = 0; i < nightSky.length; i++)
	{
		nightSky[i].show();
	}
  for(int i = 0; i < gob.length; i++)
  {
    gob[i].show();
    gob[i].move();
  }
	bob.show();
  if(keyPressed == true && key == 'w')
  bob.move();
}

public void keyPressed()
  {
  	if (key == 'w') {bob.accelerate(.1);}
  	if (key == 'a') {bob.turn(-5);}
  	if (key == 'd') {bob.turn(5);}
  	if (key == 's')
  	{
  		bob.setX((int)(Math.random() * width));
  		bob.setY((int)(Math.random()* height));
  		bob.setPointDirection((int)(Math.random() * 360));
  		bob.setDirectionX(0);
  		bob.setDirectionY(0);

  	}
  }
