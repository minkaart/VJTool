
void resetColors(){
  newTintColor = colors[int(random(0, colors.length))];
  newAnimationColor = colors[int(random(0,colors.length))]; 
}


void refreshActive(){
  println("refreshing");
  for (int i=0; i<active.length; i++){
    if (active[i] != null){active[i].stop();};
    //text("5", width/2, height/2);
    active[i] = movieList[i][int(random(0, movieList[i].length))];
    active[i].loop();
    println("refresh "+i);
    //text(5-i, width/2, height/2);
  }
}