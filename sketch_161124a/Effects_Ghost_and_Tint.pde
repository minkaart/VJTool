void ghost(Movie mov){
  if(mov.available()){
    mov.read();
    if(lastFrame != null){
      if(animation.tintGo){
          tintFrame(newTintColor);
          image(mov,0,0);
          tintFrame(newTintColor);
          image(lastFrame, 0, 0);
          animation.tintGo = false; 
        } else {
          tint(255, 255);
          image(mov, 0, 0);
          tint(255, 240);
          image(lastFrame, 0, 0);
        }
    } else {
       image(mov, 0, 0);
    }
  }
  lastFrame = get(); 
}

void tintFrame(color tintColor){
   tint(tintColor, 255);
}