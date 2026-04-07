// checkpoint 2 for unit 3
// Lawrence Su
// March 31 2026

//pallette of colours
color blueSlate = #646E78;
color coolSteel = #8D98A7;
color paleOak = #DCCCBB;
color sunlitClay = #EAB464;
color fadedCopper = #A7754D;
color white = #FFFFFF;

int toggle;

//variables for color selection
color selectedColor;


void draw() {
  background(blueSlate);


  //draw space
  fill(selectedColor);
  rect(100, 150, 600, 400);

  //buttons
  tactile(100, 65, 110);
  fill(sunlitClay);
  rect(100, 20, 150, 110);

  tactile(370, 65, 110);
  fill(fadedCopper);
  rect(330, 20, 150, 110);

  tactile(640, 65, 110);
  fill(coolSteel);
  rect(550, 20, 150, 110);
}

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(paleOak);
  rect(100, 120, 600, 440);
  noStroke();
  selectedColor = paleOak;
  
  toggle = 1;
}
// end of draw =============================================

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY)< r) {
    stroke(white);
  } else {
    stroke(paleOak);
  }
}
void mouseReleased() {
  if (mouseX  > 100 && mouseX < 250 && mouseY > 100 && mouseY < 130) {
  }
}
