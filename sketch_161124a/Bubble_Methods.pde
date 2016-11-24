void bubbles(){

  if (aniFrame != null){
    tint(255, 200);
    image(aniFrame, 0, 0);
  }
  fill(newAnimationColor, 50);
  ellipse(random(0,width), random(0,height), blockSize, blockSize);
  ellipse(random(0,width), random(0,height), blockSize, blockSize);
  ellipse(random(0,width), random(0,height), blockSize, blockSize);
  ellipse(random(0,width), random(0,height), blockSize, blockSize);
  ellipse(random(0,width), random(0,height), blockSize, blockSize);
  aniFrame = get();
}

void explodingBubbles(){
  fill(newAnimationColor, 50);
 if(draws2 <= width/2){
   for (int i = 0; i<=10; i++){
   ellipse(draws2*noise(-3,3)+width/2, draws2*noise(-3,3)+height/2, 50, 50);
   }
   draws2++; 
 } else {
   draws2 = 0; 
 }
}

void bubbleCircle(){
  int j = 0; 
if (aniFrame != null){
    tint(255, 200);
    image(aniFrame, 0, 0);
  }
  fill(newAnimationColor, 80);
 if(draws3 <= height/2){
   if(draws3%5 == 0){
     j++;
     for (int i = 0; i<=10; i++){
       ellipse(j*random(-10, 10)+width/2, j*random(-3-j,0-j)+height/2, 50, 50);
     }
     for (int i = 0; i<=10; i++){
     ellipse(j*random(-10, 10)+width/2, j*random(0+j,3+j)+height/2, 50, 50);
     }
     for (int i = 0; i<=10; i++){
     ellipse(j*random(0+j,3+j)+width/2, j*random(-10, 10)+height/2, 50, 50);
     }
     for (int i = 0; i<=10; i++){
     ellipse(j*random(-3-j,0-j)+width/2, j*random(-10, 10)+height/2, 50, 50);
     }
   }
   draws3++; 
 } else {
   draws3 = 0; 
   j = 0; 
 }
 aniFrame = get();

}