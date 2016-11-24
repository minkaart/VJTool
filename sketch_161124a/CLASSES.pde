//CLASSES
//transition data 
class Transition {
  int iterations; 
  int numChanged;
  int[] pixHolder; 
  
  Transition(int tIT, int tNC, int [] tPH){
    iterations = tIT; 
    numChanged = tNC; 
    pixHolder = tPH; 
  }
}

//effects modes
class Modes {
  boolean none; 
  boolean crawlCircle; 
  boolean crawlBlock; 
  boolean pixelate; 
  boolean ghost; 
  
  Modes(boolean tNone, boolean tCCircle, boolean tCBlock, boolean tGhost, boolean tPixelate){
    none = tNone;
    ghost = tGhost; 
    crawlCircle = tCCircle; 
    crawlBlock = tCBlock; 
    pixelate = tPixelate; 
  }

  void setAll(boolean value){
    none = value; 
    ghost = value; 
    crawlCircle = value; 
    crawlBlock = value; 
    pixelate = value; 
  }
} 

//animation effects 
class Animations {
  boolean bubbles;
  boolean tintGo; 
  boolean exbubbles;
  boolean circle; 
  boolean hailMary; 
  
 Animations(boolean tBubbles, boolean tTintGo, boolean tExbubbles, boolean tCircle, boolean tHailMary){
   bubbles = tBubbles; 
   tintGo = tTintGo;
   exbubbles = tExbubbles;
   circle = tCircle; 
   hailMary = tHailMary;
 }
 
 void setAll(boolean value){
   bubbles = value; 
   tintGo = value; 
   exbubbles = value; 
   circle = value; 
   hailMary = value; 
 } 
}