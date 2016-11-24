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