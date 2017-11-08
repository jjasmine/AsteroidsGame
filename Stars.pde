class Stars //note that this class does NOT extend Floater
{
  protected int myPosX, myPosY;
  protected int mySColor;
  protected int mySize;

  public Stars()
  {
  	myPosX = (int)(Math.random()*500);
  	myPosY = (int)(Math.random()*500);
  	mySColor = color(255);
  	mySize = (int)(Math.random()*4);
  }
  void show()
  {
  	fill(mySColor);
  	ellipse(myPosX, myPosY, mySize, mySize);
  }

}
