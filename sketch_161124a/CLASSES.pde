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
  boolean pixelate; 
  boolean glitchPixelate; 
  boolean ghost; 
  
  Modes(boolean tNone, boolean tPixelate, boolean tGPixel, boolean tGhost){
    ghost = tGhost; 
    pixelate = tPixelate; 
    glitchPixelate = tGPixel; 
    none = tNone;
  }

  void setAll(boolean value){
    none = value; 
    ghost = value; 
    glitchPixelate = value; 
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