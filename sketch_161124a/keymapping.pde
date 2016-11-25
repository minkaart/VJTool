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
   
   //toggle background
   if(key == 'b' || key == 'B'){
     if(bGround){
       bGround = false; 
       println("background = false");
     } else {
       bGround = true;
       println("background = true");
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
         effectsMode.crawlCircle = true; 
    } else if (key == 'd' || key == 'D'){
         effectsMode.setAll(false);  
         effectsMode.crawlBlock = true; 
    } else if (key == 'f' || key == 'F'){
         effectsMode.setAll(false);  
         effectsMode.ghost = true; 
    } else if (key == 'g' || key == 'G'){
          effectsMode.setAll(false); 
          effectsMode.pixelate = true; 
    } else if (key == 'h' || key == 'H'){
          effectsMode.setAll(false); 
          effectsMode.lines = true; 
    }
     
   //set target movie
    if (key >= '1' && key <= '6'){
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
    } else if (key == 'w' || key == 'W'){
     newTintColor = colors[int(random(0, colors.length))];
   }
    
   //movie reset
   if (key == 'm' || key == 'M'){ 
          refreshActive();
          println("m clicked");
    }
    
    //clear animations
    if(key == 'e' || key == 'E'){
      animation.setAll(false);
      frameRate(20); 
      aniFrame = null; 
    }
 
  
//end of key mapping
}