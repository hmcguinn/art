
 import java.util.Date;
 
int barWidth = 20;
int lastBar = -1;

int s = 1000;
void setup() {
  size(1000, 1000);
  // colorMode(HSB, height, height, height);  
  noStroke();
  background(0);
  frameRate(2);
  //noLoop();
}

void draw() {
  int step = 150;
  int size = 100;
  int start = 0;

  background(0);
  for(int x=start; x<s; x += step) {
    for(int y=start; y<s; y += step) {
      color c = color(random(255), random(255), random(255));
      int shape = int(random(3));
      fill(c);

      if(shape == 0) {
        rect(x, y, size, size);
      }
      if (shape == 1) {
        circle(x+size/2,y+size/2,size);
      }
      if (shape == 2) {
        int height = 200;
        int width = 100;
        int x1 = x+width/2;
        int y1 = y;//-height/2;
        
        int x2 = x1-width/2;
        int y2 = y+height/2;
        
        int x3 = x1+ width/2;
        int y3 = y+height/2;
        
        triangle(x1,y1,x2,y2,x3,y3);
      }
      
    }
  }  
  save("shapes_colors_#####" + (new Date()).getTime() + ".png");
}
