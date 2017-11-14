class Asteroids extends Floater
{
	private int rotSpeed;
	Asteroids()
{
	rotSpeed = (int)(Math.random()*3)-1;
	corners = 5;
 	xCorners = new int [corners];
 	yCorners = new int [corners];
 	xCorners[0] = -11;
 	yCorners[0] = -8;
 	xCorners[1] = 7;
 	yCorners[1] = -8;
 	xCorners[2] = 13;
 	yCorners[2] = 0;
 	xCorners[3] = 6;
 	yCorners[3] = 10;
 	xCorners[4] = -11;
 	yCorners[4] = 8;
 	xCorners[5] = -5;
 	yCorners[5] = 0;

 	myColor = color(255,0,0);
 	myCenterX = myCenterY = 250;
 	myDirectionX = myDirectionY = 0;
 	myPointDirection = 0;
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

}

public void move()
{
	turn(rotSpeed);
	super.move();
	myCenterX += myDirectionX;
	myCenterY += myDirectionY;

	//wrap
	if (myCenterX > width){
		myCenterX =0;
	}

}