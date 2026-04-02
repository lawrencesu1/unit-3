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
  circle(100, 65, 110);

  tactile(370, 65, 110);
  fill(fadedCopper);
  circle(370, 65, 110);

  tactile(640,65,110);
  fill(coolSteel);
  circle(640, 65, 110);
  
 
}

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(paleOak);
  rect(100, 120, 600, 440);
  noStroke();
  selectedColor = paleOak;
}
// end of draw =============================================

void tactile (int x, int y, int r) {
  if (dist(x,y,mouseX,mouseY)< r){
    stroke(white); 
  } else {
    stroke(paleOak);
  }
}  
void mouseReleased() {
  if (dist(100, 65, mouseX, mouseY) <50) {
    selectedColor = sunlitClay ;
  }

  if (dist(370, 65, mouseX, mouseY) <50) {
    selectedColor = fadedCopper ;
  }

  if (dist(640, 65, mouseX, mouseY) <50) {
    selectedColor = coolSteel ;
  }
}
