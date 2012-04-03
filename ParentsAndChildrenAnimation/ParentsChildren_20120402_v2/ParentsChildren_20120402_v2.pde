// Declare and contruct two objects (h1, h2) from the class HLine 
HLine[] oth = new HLine[3];
HLine h1 = new HLine(20, 2.0, "a string", oth); 
HLine h2 = new HLine(50, 2.5, "a string", oth);
HLine h3 = new HLine(75, 3, "no string", oth);
int w = width;



 
void setup() 
{
  size(800, 800);
  frameRate(30);
  textSize(30);
  textAlign(CENTER);
  oth[0] = h1;
oth[1] = h1;
oth[2] = h3;
}

void draw() { 
  background(204);
  h1.update(); 
  h2.update();
  h3.update(); 
  h1.addChild();
  h2.addChild(); 
  h3.addChild();
  
} 
 
class HLine {
//  String st; = "a string"; 
  float ypos, speed, x = random(800); String st; HLine[] others; 
  HLine (float y, float s, String st_in, HLine[] oin) {  
    ypos = y; 
    speed = s; 
    st = st_in;
    others = oin;
    
//    child = h1;
//    child = h1;
  }
   
  void addChild(){
//  child = h2;
  }
  
  void update() { 
    ypos += speed; 
    if (ypos > width) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
    text(st, x, ypos);
    line(x, ypos, others[2].x, others[2].ypos);
  } 
  

}
