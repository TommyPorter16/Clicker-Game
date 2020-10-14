void options() {
  background(180);
  
  
  //Image options
  strokeWeight(1);
  stroke(0);
  fill(255);
  
  image(biden,137.5,87.5,175,175);
  image(trump,412.5,87.5,175,175);
  
  //Selected Image
  image(selectedImage,200,450,d,d);
  
  //Back to intro
  tactile(725,75,50);
  strokeWeight(4);
  fill(255);
  circle(725,75,100);
  
  //Back to intro sign
  textSize(20);
  textAlign(CENTER,CENTER);
  fill(0);
  text("Intro",725,75);
  
  
  //slider line
  strokeWeight(5);
  stroke(255);
  line(375,675,475,675);
  
  //slider circle
  strokeWeight(1);
  fill(0);
  circle(sliderX, 675, 20);
}

void optionsClicks(){
  //back to intro
  if (dist(725,75,mouseX,mouseY)<d/2) {
  mode = INTRO;
  }
  
  //change image to biden
  if (dist(225,175,mouseX,mouseY)<100) {
    selectedImage = biden;
  }
  
  //change image to trump
  if (dist(500,175,mouseX,mouseY)<100) {
    selectedImage = trump;
  }
  //Moving the slider
  controlSlider();
}

void optionsDragged() {
  controlSlider();
  d = map(sliderX,375,475,100,400);
  
}

void controlSlider() {
  if (mouseX>375 && mouseX<475 && mouseY>675 && mouseY<695) {
    sliderX = mouseX;
  }
}
