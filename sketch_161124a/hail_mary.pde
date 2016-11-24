//flashing circle effect, not in use -- garrish

void hailMary(){
  frameRate(60);
if(draws1%10 == 0){
    if(change){
      change = false;
    } else {
      change = true; 
    }
  }
  
  if(change){ 
  background(233, 23, 233);
  fill(newTintColor);
  ellipse(width/2, height/2, 650, 650);
  fill(newAnimationColor);
  ellipse(width/2, height/2, 550, 550);
  fill(newTintColor);
  ellipse(width/2, height/2, 450, 450);
  fill(newAnimationColor);
  ellipse(width/2, height/2, 350, 350);
  fill(newTintColor);
  ellipse(width/2, height/2, 250, 250);
  fill(newAnimationColor);
  ellipse(width/2, height/2, 150, 150);
  fill(newTintColor);
  ellipse(width/2, height/2, 50, 50);
  } else {
  background(23, 23, 233);
  fill(newAnimationColor);
  ellipse(width/2, height/2, 650, 650);
  fill(newTintColor);
  ellipse(width/2, height/2, 550, 550);
  fill(newAnimationColor);
  ellipse(width/2, height/2, 450, 450);
  fill(newTintColor);
  ellipse(width/2, height/2, 350, 350);
  fill(newAnimationColor);
  ellipse(width/2, height/2, 250, 250);
  fill(newTintColor);
  ellipse(width/2, height/2, 150, 150);
  fill(newAnimationColor);
  ellipse(width/2, height/2, 50, 50);
  }

  draws1++;
}