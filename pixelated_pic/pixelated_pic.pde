ArrayList <Pixel> myPixels;
PImage demon;

void setup() {
  size(800,800);
  noStroke();
  demon = loadImage("demon_slayer.jpg");
  demon.resize(width,height);
  image(demon, 0,0);
  rectMode(CENTER);

  myPixels = new ArrayList<Pixel>();
  
  int i = 0;
  while (i < 1000) {
    myPixels.add( new Pixel() );
    i++;
  }
}

void draw() {
  image(demon,0,0);

  int i = 0;
  while (i < 1000) {
   Pixel p = myPixels.get(i); 
   p.act();
   p.show();
   i++;
  }
}
