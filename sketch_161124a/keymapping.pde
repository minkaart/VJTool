//function changes values based on keys
void getkeys(){
    //blocksizes  
   if (key == ' '){
     blockSize = 30;
   }
   if (key == 'l' || key == 'L'){
     blockSize+=2;
     if(blockSize >= 50) blockSize = 10; 
   } 
   if (key == 'k' || key == 'K'){
     blockSize-=2;
     if(blockSize<=2) blockSize = 10; 
   } 
   
   //toggle live
   if (key == '0'){
     if(thisLive){
       thisLive = false;
       println(" not live");
     } else {
       thisLive = true;
       println("live");
     }
   }
   
   //set animation 
    if(key == 'p' || key == 'P') {
       animation.tintGo = true; 
    }   
    if(key == 'o' || key == 'O') {
      if(animation.bubbles){
        animation.bubbles = false;
        aniFrame = null;
      } else {
      animation.bubbles = true;}
    }
    if(key == 'i' || key == 'I'){
      if(animation.exbubbles){
        animation.exbubbles = false;
        aniFrame = null;
      } else{
        animation.exbubbles = true;
        draws2 = 0;
      }   
    }
     
  //set effects mode   
    if (key == 'a' || key == 'A'){
         effectsMode.setAll(false); 
         effectsMode.none = true;  
    } else if (key == 's' || key == 'S'){
         effectsMode.setAll(false);  
         effectsMode.pixelate = true; 
    } else if (key == 'd' || key == 'D'){
         effectsMode.setAll(false);  
         effectsMode.glitchPixelate = true; 
    } else if (key == 'f' || key == 'F'){
         effectsMode.setAll(false);  
         effectsMode.ghost = true; 
    }
     
   //set target movie
    if (key >= '1' && key <= '8'){
      targetMov = singles[int(key)-49];  
    } else {
        if(key == 'z' || key == 'Z'){
           targetMov = active[0]; 
         } else if (key == 'x' || key == 'X'){
           targetMov = active[1]; 
         } else if (key == 'c' || key == 'C'){
           targetMov = active[2]; 
         } else if (key == 'v' || key == 'V'){
           targetMov = active[3]; 
         }
        }
    
    //color reset  
   if(key == 'q' || key == 'Q'){
      resetColors();
    } else if (key == 'g' || key == 'G'){
     newTintColor = colors[int(random(0, colors.length))];
   }
    
   //movie reset
   if (key == 'm' || key == 'M'){ 
          refreshActive();
          println("m clicked");
    }
    
    //clear animations
    if(key == 'w' || key == 'W'){
      animation.setAll(false);
      frameRate(20); 
      aniFrame = null; 
    }
 
  
//end of key mapping
}