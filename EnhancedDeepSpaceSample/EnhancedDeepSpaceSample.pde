
// Version 3.3
// Example implemenation which shows the usage of the new PharusClient

boolean bFullscreen = false; // fullscreen or window mode
int scaleFactor = 4; // only for window mode: fraction of scale of displayed windows content relative to Deep Space resolution (which is 3840x2160 for wall and floor each).

float cursor_size = 25;
PFont font;
int windowWidth = 3840/scaleFactor;
int windowHeight = 2160*2/scaleFactor;
int wallHeight = windowHeight/2;

boolean ShowTrack = true;
boolean ShowPath = true;
boolean ShowFeet = true;

void settings()
{
  if (bFullscreen)
  {
    fullScreen(P2D, SPAN);
  }
  else
  {
    size(windowWidth, windowHeight);   
  }
}


void setup()
{
  // update with actual fullscreen resolutions
  if (bFullscreen)
  {  
    windowWidth = width;
    windowHeight = height;
    wallHeight = windowHeight / 2;  
  }  
  
  frameRate(60);
  
  noStroke();
  fill(0);

  font = createFont("Arial", 18);
  textFont(font, 18);
  textAlign(CENTER, CENTER);

  initPlayerTracking();
}

void draw()
{
  // clear background with white
  background(255);

  // set upper half of window (=wall projection) bluish
  noStroke();
  fill(70, 100, 150);
  rect(0, 0, windowWidth, wallHeight);
  fill(150);
  text((int)frameRate + " FPS", width / 2, 10);

  drawPlayerTracking();
}

void keyPressed()
{
  switch(key)
  {
  case 'p':
    ShowPath = !ShowPath; //<>//
    break;
  case 't':
    ShowTrack = !ShowTrack;
    break;
  case 'f':
    ShowFeet = !ShowFeet;
    break;
  }
}
