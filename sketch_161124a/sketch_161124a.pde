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
thisLive = true;
  
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
 
 //Populate movie arrays
 populateMovie(); 
 
movieList = new Movie[][]{heads, other, heads, other};
active = new Movie[4];
refreshActive();
targetMov = active[0];
targetMov.loop();

//POPULATE EFFECTS and ANIMATIONS
  animation = new Animations(false, false, false, false, false); 
  effectsMode = new Modes(true, false, false, false, false); 

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
background(0); 
if(keyPressed) getkeys(); 

//get effect  
   if(effectsMode.ghost){
       ghost(targetMov); 
   } else if(effectsMode.none){
       playMov(targetMov); 
   } else if (effectsMode.crawlCircle){
       crawlCircle(blockSize, targetMov);  
   } else if (effectsMode.crawlBlock){
       crawlBlock(blockSize, targetMov);
   } else if (effectsMode.pixelate){
       glitchPixelate(blockSize, movColors, targetMov); 
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