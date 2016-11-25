void glitchPixelate(int blockSize, color colorArray[], Movie mov){
    mov.read(); 
    mov.loadPixels();
    background(255);
    int pixelsHigh = height / blockSize;
    int pixelsWide = width / blockSize;
    PImage imageFrame;
   
    for(int j = 0; j < pixelsHigh; j++){
      for (int i = 0; i<pixelsWide; i++){
        color this_color = mov.get(int(i*blockSize), int(j*blockSize)); 
        fill(this_color); 
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