// sliders
// Lawrence Su
// April 14 2026

//Pallette
color TeaGreen = #C9E4CA;
color mutedTeal = #87BBA2;
color pacificCyan = #55828B;
color darkSlateGrey = #3B6064;
color charcoalBlue = #364958;

float sliderY;
float shade;

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(mutedTeal);
  fill(mutedTeal);
  sliderY= 400;
  shade = 0;
}

void draw() {
  background (shade);
  shade = map(sliderY, 100,400,0,255) ;
  line(400, 100, 400, 400);
  circle(400, sliderY, 50);
}

void mouseDragged() {
  controlSlider();
}

void mouseReleased() {
 controlSlider();
}

void controlSlider() {
  if (mouseY> 110 && mouseY < 420 && mouseX > 375 && mouseX < 450) {
    sliderY = mouseY;
  }
  
}
