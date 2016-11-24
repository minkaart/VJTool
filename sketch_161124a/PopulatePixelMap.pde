//code for a randomized pixelated transition between two videos *unused in script at this time
void populatePixelMap(int pixelsHigh, int PixelsWide, int totalPixels, int buffer, int blockSize, int frameDuration, Transition transObject){
  if(transObject.iterations > frameDuration+buffer){
    transObject.iterations = 0;  
    transObject.numChanged = 0; 
    Arrays.fill(transObject.pixHolder, 0);
   } else {
   
   transObject.iterations++; 
   int currentFrame = transObject.iterations;
    int diff; 
  if (currentFrame <= frameDuration/2){
    diff = frameDuration/2-currentFrame;
  } else {
    diff = currentFrame - frameDuration/2;
  }
  
  int changeCount; 
  if (diff <= frameDuration/6){
    changeCount = ceil((0.5*totalPixels)/(frameDuration/3));
    } else if (diff <= frameDuration/3){
    changeCount = ceil((0.4*totalPixels)/(frameDuration/3));
    } else {
    changeCount = ceil((0.1*totalPixels)/(frameDuration/3));
    if(totalPixels - transObject.numChanged < changeCount){
      changeCount = totalPixels - transObject.numChanged; 
    }   
  } 
   
  
  int h = 0; 
  if(transObject.numChanged < totalPixels){
    while(h<changeCount) {
    int randomLocation = int(random(0, transObject.pixHolder.length)); 
    if (transObject.pixHolder[randomLocation] != 1){
      transObject.pixHolder[randomLocation] = 1; 
      h++; 
    }  
  }
  transObject.numChanged = transObject.numChanged+changeCount; 
  }
}
}