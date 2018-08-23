
PImage Target;
PImage Range;
PImage Lazer;
import processing.sound.*;
int GunX = 480;
int GunY = 225;
int LazerStartX = 640;
int LazerStartY = 280;
int LazerEndX = 550;
int LazerEndY = 246;
int BulletHoleX = 0;
int BulletHoleY = 246;

//music  
SoundFile file;
  String Music = "mitheme.mp3";
String path;



void setup()
{
  
  size(960,470);
  

  
  Target = loadImage("target.png");
  Range  = loadImage("shootingrange.jpg");
  Lazer = loadImage("lazergun.png");
  

  

  
  path = sketchPath(Music);
  file = new SoundFile(this, path);
  file.play(); 
  
  
 
}


void keyPressed()
{
  //moving the gun
  if (key == CODED)
  {
    if (keyCode == LEFT){
      GunX = GunX-10;
      LazerStartX = LazerStartX-10;
      LazerEndX = LazerEndX-10;
    }
    
    if (key == CODED)
  {
    if (keyCode == RIGHT){
      GunX = GunX+10;
      LazerStartX = LazerStartX+10;
      LazerEndX = LazerEndX+10;
    }
    
  }
  }
  



}

void draw()
{
  
  //Shooting Range Background
     background(Range);
     //background(255,255,255);
     
     
     
     
     //Targets
     
 Target.resize(35,55);
 
 
  image(Target,155,216);
  
  image(Target,232,216);
  
  image(Target,310,216);
  
  image(Target,387,216);
  
  image(Target,464,216);
  
  image(Target,537,216);
  
  image(Target,613,216);
  
  image(Target,695,216);
  
  image(Target,768,217);
  
  
  
  
//Bullet Hole drawing
     fill(255,255,255);
     if (mousePressed == true) {
       BulletHoleX = LazerEndX;
     }
  
  ellipse(BulletHoleX,BulletHoleY,5,5);
  
  
  
  //Lazer Drawing
  image(Lazer,GunX,GunY);
  
  
}


void mousePressed()
{
  
  //Lazer Beam Line Work
  stroke(255,0,0);
  line(LazerStartX,LazerStartY,LazerEndX,LazerEndY);
  
  fill(255,0,0);
  ellipse(LazerEndX,LazerEndY,5,5);
  
  
}