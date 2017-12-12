class Bullet extends Floater
{
	public Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + theShip.getDirectionY(); 
	}

	void setX(int x){myCenterX = x;}  
  	int getX(){ return(int) myCenterX;}   
 	void setY(int y){myCenterY = y;}   
  	int getY(){return (int)myCenterY;}   
  	void setDirectionX(double x){myDirectionX = x;}   
  	double getDirectionX(){return myDirectionX;}   
  	void setDirectionY(double y){myDirectionX = y;}   
  	double getDirectionY(){return myDirectionY;}   
  	void setPointDirection(int degrees){myPointDirection = degrees;}   
  	double getPointDirection(){return myPointDirection;} 

	public void show()
	{
		fill(color(255));
		stroke(color(255));
		ellipse((int)myCenterX,(int)myCenterY,7,7);

	}
}