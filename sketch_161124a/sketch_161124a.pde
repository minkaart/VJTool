import processing.video.*; 
import java.util.*;
import ddf.minim.*; 

//AUDIO
Minim minim; 
AudioInput in; 

//GLOBAL VARIABLES
//create variable of class Modes
Modes effectsMode;
//animations variable 
Animations animation; 

//MOVIE ARRAYS
Movie[] singles;
Movie[] active; 
Movie movieList[][]; 
Movie[] danceShorts;
Movie[] danceLongs;
Movie[] heads;
Movie[] other; 

//MOVIE VARIABLE
Movie targetMov;

//animation VARS
PImage aniFrame; 
int draws1;
int draws2;
int draws3;
boolean[] animations; 

color[] colors; 
color newAnimationColor;
color newTintColor;
PImage lastFrame; 

int blockSize = 10;
color movColors[];

int totalBalls = 2000;
PVector [] b = new PVector[totalBalls];
float moveSpeed = 5;

boolean change; 
int j; 
Transition transition; 
color newColor; 
int fadeRate; 
int[] transitionArray; 

//RECORDING MODES
boolean record;
boolean play; 
boolean live; 
PImage[] vidLoop;
int records;
int plays;

//live
boolean thisLive;

void setup() {
  size(640, 360);
  background(0);
  frameRate(20);
  noStroke();
 
 
//live
thisLive = false;
  
//audio
minim = new Minim(this);
in = minim.getLineIn();
  
//MODE
record = false;
play = false;
live = true;
vidLoop = new PImage[5000];
records = 0;
plays = 0; 
 
//Populate movie Arrays
//Populate single movs
   singles = new Movie[]{
    //new Movie(this, "singles/angryCrowd.mov"),
    //new Movie(this, "singles/batmanrunning.mov"),
    new Movie(this, "singles/max.mov"),  
    new Movie(this, "danceLong/feetTrim.mov"),
    //new Movie(this, "singles/SMHand.mov"),
    //new Movie(this, "singles/skateboardCat.mov"),
    new Movie(this, "singles/VintageStart.mov"),
    //new Movie(this, "singles/pow.mov"),
    new Movie(this, "singles/recordSpin.mov"),
    new Movie(this, "heads/smoking.mov"),
    new Movie(this, "other/eye.mov")
    //new Movie(this, "singles/whackBiffBoff.mov"),
    //new Movie(this, "singles/winning.mov")
  };
 for(int i =0; i< singles.length; i++){
   singles[i].loop();
 }


//Movie[] heads;
heads = new Movie[]{
  new Movie(this, "heads/reeferCrazyWoman.mov"),
  new Movie(this, "heads/madness.mov"),
  new Movie(this, "heads/smoking.mov"),
  new Movie(this, "heads/talkingHead.mov"),
  new Movie(this, "heads/max2.mov"),
};
//Movie[] other;
other = new Movie[]{
  //new Movie(this, "other/callnow.mov"),
  new Movie(this, "other/daphnia.mov"),
  new Movie(this, "other/disco.mov"),
  new Movie(this, "other/eye.mov"),
  new Movie(this, "other/bars.mov"),
  //new Movie(this, "other/batmanCrowd.mov"),
  //new Movie(this, "other/dogSkateboard.mov"),
  //new Movie(this, "other/dolphins.mov"),
  //new Movie(this, "other/FlipperAbstract.mov"),
  //new Movie(this, "other/sillouhette.mov"),
  //new Movie(this, "other/spin.mov"),
  new Movie(this, "other/unknownWorld.mov"),
  //added
  new Movie(this, "danceLong/Charleston.mov"),
  new Movie(this, "danceShort/madDance.mov")
};

movieList = new Movie[][]{heads, other, heads, other};
active = new Movie[4];
refreshActive();
targetMov = active[0];
targetMov.loop();

//POPULATE EFFECTS and ANIMATIONS
  animation = new Animations(false, false, false, false, false); 
  effectsMode = new Modes(true, false, false, false); 

  colors = new color[]{color(237, 17, 53), 
      color(13, 252, 145), 
      color(13, 49, 252),
      color(252, 13, 208),
      color(13, 252, 252),
      color(252, 168, 13),
      color(52, 230, 21)
    }; 
  newTintColor = colors[int(random(0, colors.length))];
  newAnimationColor = colors[int(random(0,colors.length))]; 
  draws1 = 0;
  draws2 = 0;
  draws3 = 0;  

//Stuff for Unused Transitions/effects
  movColors = new color[width/blockSize * height/blockSize];
  transition = new Transition(0, 0, new int[width/blockSize*height/blockSize]);  
  fadeRate = 10; 
  textSize(32); 
  change = true;
  newColor = color(255, 240, 100);
}

// Display values from movie
void draw() {   

if(keyPressed) getkeys(); 

//get effect  
   if(effectsMode.ghost){
       ghost(targetMov); 
   } else if(effectsMode.none){
       playMov(targetMov); 
   } else if (effectsMode.pixelate){
       pixelate(blockSize, targetMov);  
   } else if (effectsMode.glitchPixelate){
       crawlblock(blockSize, targetMov);
   }

//get play animation   
   if(animation.bubbles) bubbles();
   if(animation.exbubbles) explodingBubbles(); 
   if(animation.circle) bubbleCircle(); 

//live
if(!thisLive) autoVJ();
}

void playMov (Movie mov) {
  if(mov.available()){
    mov.read();
    if (animation.tintGo){
      tintFrame(newTintColor); 
      image(mov,0,0);
      animation.tintGo = false; 
    } else {
      tintFrame(255); 
      image(mov, 0, 0);
    }
  }
}

void glitchPixelate(int blockSize, color colorArray[], Movie mov){
    mov.read(); 
    mov.loadPixels();
    background(255);
    int pixelsHigh = height / blockSize;
    int pixelsWide = width / blockSize;
    PImage imageFrame;
    
    //for loop populates color Array with colors in frame
    int count = 0;   
    for (int j=0; j<pixelsHigh; j++){
      for(int i =0; i<pixelsWide; i++) {
        colorArray[count] = mov.get(i*blockSize, j*blockSize);
        count++;
      }
    }
   
    for(int j = 0; j < pixelsHigh; j++){
      for (int i = 0; i<pixelsWide; i++){
        fill(colorArray[j*pixelsWide+i]);
        rect(i*blockSize, j*blockSize, blockSize, blockSize); 
      }
    }
    
    if(animation.tintGo){
      imageFrame = get(); 
      tintFrame(newTintColor); 
      image(imageFrame, 0, 0); 
      animation.tintGo = false; 
    }

}

void pixelate(int blockSize, Movie mov){
  mov.read();
  noStroke();
  PImage imageFrame;
  int point = blockSize;
  
  for (int i = 0; i < totalBalls; i++)  b[i] = new PVector();
  
  float speed = map (mouseY, 0, width, 0.005, 0.01);
  

  moveSpeed += .005; 
  for (int i = 0; i < totalBalls; i++)  {
   int x = (int) (noise (10+i)*width);
   int y = (int) (noise (i)*height);
   
    b[i].x = x;
   
    b[i].y = y;
  } 
  
   for (int i = 0; i < totalBalls; i++) {
      color pix = mov.get(int(b[i].x), int(b[i].y));
      fill(pix, 128);
      ellipse(b[i].x, b[i].y, point , point);
   }
    
  if(animation.tintGo){
      imageFrame = get(); 
      tintFrame(newTintColor); 
      image(imageFrame, 0, 0); 
      animation.tintGo = false; 
    }
}

void crawlblock(int blockSize, Movie mov){
  mov.read();
  noStroke();
  PImage imageFrame;
  int point = blockSize;
  
  for (int i = 0; i < totalBalls; i++)  b[i] = new PVector();
  
  // float speed = map (mouseY, 0, width, 0.005, 0.01);
  
  moveSpeed +=5;
  for (int i = 0; i < totalBalls; i++)  {
    int x = (int) (noise (moveSpeed+i) * mov.width * 2 - mov.width/2 );
    int y = (int) (noise (moveSpeed+10+i) * mov.height * 2 - mov.height/2);
    b[i].x = x;
    b[i].y = y;
  } 
  
   for (int i = 0; i < totalBalls; i++) {
      color pix = mov.get(int(b[i].x), int(b[i].y));
      fill(pix, 128);
      rect(b[i].x, b[i].y, point , point);
   }
    
  if(animation.tintGo){
      imageFrame = get(); 
      tintFrame(newTintColor); 
      image(imageFrame, 0, 0); 
      animation.tintGo = false; 
    }
}