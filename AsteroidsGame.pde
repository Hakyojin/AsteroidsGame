SpaceShip bob = new SpaceShip();
Asteroid[] jim = new Asteroid[20];
Star[] joe = new Star[400];
boolean up=false;
boolean left=false;
boolean right=false;//your variable declarations here
public void setup() 
{
  size(600,600);
  background(0);
  joe = new Star[400];
  for(int i=0; i<joe.length;i++)
  {
    joe[i] = new Star();
  }
  jim = new Asteroid[20];
  for(int i=0; i<jim.length;i++)
  { 
    jim[i] = new Asteroid();
  }
}
public void draw()
{
  background(0);
  if(up){bob.accelerate(.1);}
  if(left){bob.rotate(-5);}
  if(right){bob.rotate(5);}
  for(int i=0;i<joe.length;i++)
    joe[i].show();
  for(int i=0;i<jim.length;i++)
  {
    jim[i].move();
    jim[i].show();
  }
  bob.move();
  bob.show();
}
public void keyPressed()
{  
      if(key=='w'){up=true;}
      if(key=='a'){left=true;}
      if(key=='d'){right=true;}
}
public void keyReleased()
{  
      if(key=='w'){up=false;}
      if(key=='a'){left=false;}
      if(key=='d'){right=false;}
}
class Star{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  void show()
  {
    fill(255,255,204);
    ellipse(myX,myY,1,1);
  }
}
class Asteroid extends Floater
{
  public void setX(int x){myCenterX = x;} 
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX=x;}   
  public double getDirectionX(){return (int)myDirectionX;}   
  public void setDirectionY(double y){myDirectionY=y;}   
  public double getDirectionY(){return (int) myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return(int)myPointDirection;}
  private int spin;
  public Asteroid()
  {
    myColor=(100);
    myCenterX = 300;
    myCenterY = 300;
    corners = 27;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -4;
    yCorners[0] = 1;
    xCorners[1] = -1;
    yCorners[1] = 2;
    xCorners[2] = -1;
    yCorners[2] = 3;
    xCorners[3] = -4;
    yCorners[3] = 4;
    xCorners[4] = -1;
    yCorners[4] = 5;
    xCorners[5] = -8;
    yCorners[5] = 9;
    xCorners[6] = 1;
    yCorners[6] = 5;
    xCorners[7] = 7;
    yCorners[7] = 4;
    xCorners[8] = 1;
    yCorners[8] = 3;
    xCorners[9] = 2;
    yCorners[9] = 2;
    xCorners[10] = 6;
    yCorners[10] = 2;
    xCorners[11] = 7;
    yCorners[11] = 1;
    xCorners[12] = 10;
    yCorners[12] = 1;
    xCorners[13] = 11;
    yCorners[13] = 0;
    xCorners[14] = 10;
    yCorners[14] = -1;
    xCorners[15] = 7;
    yCorners[15] = -1;
    xCorners[16] = 6;
    yCorners[16] = -2;
    xCorners[17] = 2;
    yCorners[17] = -2;
    xCorners[18] = 1;
    yCorners[18] = -3;
    xCorners[19] = 7;
    yCorners[19] = -4;
    xCorners[20] = 1;
    yCorners[20] = -5;
    xCorners[21] = -8;
    yCorners[21] = -9;
    xCorners[22] = -1;
    yCorners[22] = -5;
    xCorners[23] = -4;
    yCorners[23] = -4;
    xCorners[24] = -1;
    yCorners[24] = -3;
    xCorners[25] = -1;
    yCorners[25] = -2;
    xCorners[26] = -4;
    yCorners[26] = -1;
    setX ((int)0);
    setY ((int)(Math.random()*600));
    setDirectionX ((Math.random()*5)-2);
    setDirectionY ((Math.random()*5)-2);
    setPointDirection((int)(Math.random()*360));
    spin = (int)((Math.random()*7)-3);
  }
  public void move()
  {
    super.move();
    rotate(spin);
  }
}
class SpaceShip extends Floater  
{   
  public SpaceShip(){
    myColor=(255);
    myCenterX = 300;
    myCenterY = 300;
    corners = 27;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -4;
    yCorners[0] = 1;
    xCorners[1] = -1;
    yCorners[1] = 2;
    xCorners[2] = -1;
    yCorners[2] = 3;
    xCorners[3] = -4;
    yCorners[3] = 4;
    xCorners[4] = -1;
    yCorners[4] = 5;
    xCorners[5] = -8;
    yCorners[5] = 9;
    xCorners[6] = 1;
    yCorners[6] = 5;
    xCorners[7] = 7;
    yCorners[7] = 4;
    xCorners[8] = 1;
    yCorners[8] = 3;
    xCorners[9] = 2;
    yCorners[9] = 2;
    xCorners[10] = 6;
    yCorners[10] = 2;
    xCorners[11] = 7;
    yCorners[11] = 1;
    xCorners[12] = 10;
    yCorners[12] = 1;
    xCorners[13] = 11;
    yCorners[13] = 0;
    xCorners[14] = 10;
    yCorners[14] = -1;
    xCorners[15] = 7;
    yCorners[15] = -1;
    xCorners[16] = 6;
    yCorners[16] = -2;
    xCorners[17] = 2;
    yCorners[17] = -2;
    xCorners[18] = 1;
    yCorners[18] = -3;
    xCorners[19] = 7;
    yCorners[19] = -4;
    xCorners[20] = 1;
    yCorners[20] = -5;
    xCorners[21] = -8;
    yCorners[21] = -9;
    xCorners[22] = -1;
    yCorners[22] = -5;
    xCorners[23] = -4;
    yCorners[23] = -4;
    xCorners[24] = -1;
    yCorners[24] = -3;
    xCorners[25] = -1;
    yCorners[25] = -2;
    xCorners[26] = -4;
    yCorners[26] = -1;
    for (int i=0;i<corners;i++)
    {
      xCorners[i] *= 2.2;
      yCorners[i] *= 2.2;
    }
  }
  public void setX(int x){myCenterX = x;} 
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX=x;}   
  public double getDirectionX(){return (int)myDirectionX;}   
  public void setDirectionY(double y){myDirectionY=y;}   
  public double getDirectionY(){return (int) myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return(int)myPointDirection;}
  }
abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 

