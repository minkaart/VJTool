void autoVJ() {
  int tintcheck = int(random(0, 30));
  int colorcheck = int(random(0, 30));
  int newvidcheck = int(random(0, 30));
  
  int c = 0; 
  if(++c >= in.bufferSize()) c=0;
  int s = int(in.left.get(c)*100);
  blockSize=blockSize+s;
  if(blockSize >= 50) blockSize = 11; 
  if(blockSize <=10) blockSize = 49;
  
  if(tintcheck<=2){
    animation.tintGo = true;
  }
  
  if(colorcheck<=2){
    resetColors();
  }
  
  if(newvidcheck < 1) {
    int newtar = int(random(0, 6));
    targetMov = singles[newtar];
  }
}