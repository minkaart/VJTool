void populateMovie(){
  //Populate movie Arrays
//Populate single movs
   singles = new Movie[]{
     new Movie(this, "danceLong/GoGo.mov"),
    //new Movie(this, "singles/angryCrowd.mov"),
    //new Movie(this, "singles/batmanrunning.mov"),
    new Movie(this, "singles/max.mov"),  
    new Movie(this, "danceLong/feetTrim.mov"),
    //new Movie(this, "singles/SMHand.mov"),
    //new Movie(this, "singles/skateboardCat.mov"),
    new Movie(this, "singles/VintageStart.mov"),
    //new Movie(this, "singles/pow.mov"),
    new Movie(this, "singles/recordSpin.mov"),
    new Movie(this, "heads/smoking.mov"),
    new Movie(this, "other/eye.mov")
    //new Movie(this, "singles/whackBiffBoff.mov"),
    //new Movie(this, "singles/winning.mov")
  };
 for(int i =0; i< singles.length; i++){
   singles[i].loop();
 }


//Movie[] heads;
heads = new Movie[]{
  new Movie(this, "heads/reeferCrazyWoman.mov"),
  new Movie(this, "heads/madness.mov"),
  new Movie(this, "heads/smoking.mov"),
  new Movie(this, "heads/talkingHead.mov"),
  new Movie(this, "heads/max2.mov"),
};
//Movie[] other;
other = new Movie[]{
  //new Movie(this, "other/callnow.mov"),
  new Movie(this, "other/daphnia.mov"),
  new Movie(this, "other/disco.mov"),
  new Movie(this, "other/eye.mov"),
  new Movie(this, "other/bars.mov"),
  //new Movie(this, "other/batmanCrowd.mov"),
  //new Movie(this, "other/dogSkateboard.mov"),
  //new Movie(this, "other/dolphins.mov"),
  //new Movie(this, "other/FlipperAbstract.mov"),
  //new Movie(this, "other/sillouhette.mov"),
  //new Movie(this, "other/spin.mov"),
  new Movie(this, "other/unknownWorld.mov"),
  //added
  new Movie(this, "danceLong/Charleston.mov"),
  new Movie(this, "danceShort/madDance.mov")
};

  
  
}