class Pixel {
 float x,y,size;
 color c;
 
 Pixel() {
  x = random(0,width);
  y = (random(0,height));
  c = get(int(x), int(y));
  size = 1;
 }
 
 void act() {
  //size = map(dist(mouseX,mouseY,x,y), 1,50, 0,200);
  size = dist(mouseX,mouseY,x,y)/10;
  if (size > 200) {
   size = 200; 
  }
 }
 
 void show() {
   fill(c);
   rect(x,y,size,size);
 }
  
}
