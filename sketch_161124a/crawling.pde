void crawl(int blockSize, Movie mov, boolean circle){
  mov.read();
  noStroke();
  PImage imageFrame;
  
  for (int i = 0; i < totalBalls; i++)  b[i] = new PVector();
  
  moveSpeed += .005; 
  for (int i = 0; i < totalBalls; i++)  {
    int x = (int) (noise (moveSpeed+i) * mov.width * 2 - mov.width/2 );
    int y = (int) (noise (moveSpeed+10+i) * mov.height * 2 - mov.height/2);
  
    b[i].x =x;  
    b[i].y =y;
  } 
  
   for (int i = 0; i < totalBalls; i++) {
      color pix = mov.get(int(b[i].x), int(b[i].y));
      fill(pix, 128);
      if(circle){
         ellipse(b[i].x, b[i].y, blockSize, blockSize);
      } else {
         rect(b[i].x, b[i].y, blockSize, blockSize);      
      }
   }
    
  if(animation.tintGo){
      imageFrame = get(); 
      tintFrame(newTintColor); 
      image(imageFrame, 0, 0); 
      animation.tintGo = false; 
    }
}

void crawlBlock(int blockSize, Movie mov){
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

void lines (int blockS, Movie mov){
  mov.read(); 
  noStroke();
  PImage imageFrame;
  
  for (int i = 0; i < totalBalls; i++)  b[i] = new PVector();
  
  moveSpeed += 50; 
  for(int i = 0; i<totalBalls; i++){
    b[i].x = noise(i)*mov.width*2-mov.width/2;
    b[i].y = noise(moveSpeed)*mov.height*2-mov.height/2;
  }
  
  for(int i =0; i<totalBalls; i++){
    color pix = mov.get(int(b[i].x), int(b[i].y));
    fill(pix, 128); 
    rect(b[i].x, b[i].y, blockS, blockS);
  }
}