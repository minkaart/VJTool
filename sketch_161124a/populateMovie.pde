void populateMovie(){
  //Populate movie Arrays
//Populate single movs
   singles = new Movie[]{
    new Movie(this, "singles/VintageStart.mov"),
    new Movie(this, "singles/recordSpin.mov"),
    new Movie(this, "danceLong/breakfastFall1.mov"),
    new Movie(this, "danceLong/GoGo1.mov"),
    new Movie(this, "danceLong/GoldBikini1.mov"),
    new Movie(this, "danceLong/Boop1.mov"),
    new Movie(this, "danceLong/breakfastLeftRight1.mov"),
    //new Movie(this, "singles/angryCrowd.mov"),
    //new Movie(this, "singles/batmanrunning.mov"),
    //new Movie(this, "singles/max.mov"),  
    //new Movie(this, "danceLong/feetTrim.mov"),
    //new Movie(this, "singles/SMHand.mov"),
    //new Movie(this, "singles/skateboardCat.mov"),
    //new Movie(this, "singles/pow.mov"),
    //new Movie(this, "heads/smoking.mov"),
    //new Movie(this, "other/eye.mov"),
    new Movie(this, "danceLong/travolta1.mov")
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
  //new Movie(this, "heads/max2.mov"),
  new Movie(this, "heads/freakout1.mov")
};
//Movie[] other;
other = new Movie[]{
  //new Movie(this, "other/callnow.mov"),
  //new Movie(this, "other/daphnia.mov"),
  //new Movie(this, "other/disco.mov"),
  //new Movie(this, "other/eye.mov"),
  //new Movie(this, "other/bars.mov"),
  //mnew Movie(this, "other/batmanCrowd.mov"),
  //new Movie(this, "other/dogSkateboard.mov"),
  //new Movie(this, "other/dolphins.mov"),
  //new Movie(this, "other/FlipperAbstract.mov"),
  //new Movie(this, "other/sillouhette.mov"),
  //new Movie(this, "other/spin.mov"),
  //new Movie(this, "other/unknownWorld.mov"),
  //added
  new Movie(this, "danceLong/Charleston.mov"),
  //new Movie(this, "danceShort/madDance.mov"), 
  new Movie(this, "danceLong/turban1.mov"),
  new Movie(this, "danceLong/GreaseLong.mov"),
  new Movie(this, "danceLong/bikini1.mov"),
  new Movie(this, "danceLong/boys1.mov"),
  new Movie(this, "danceLong/breakfastSingles1.mov"),
  new Movie(this, "danceLong/catDance1.mov"),
};

  
  
}