// Declare and contruct two objects (h1, h2) from the class HLine 

HLine h1 = new HLine(20, 2.0, "a string"); 
HLine h2 = new HLine(50, 2.5, "a string"); 

 
void setup() 
{
  size(200, 200);
  frameRate(30);
  textSize(30);
  textAlign(CENTER);
}

void draw() { 
  background(204);
  h1.update(); 
  h2.update(); 
 h1.addChild();
h2.addChild(); 
  
} 
 
class HLine {
//  String st; = "a string"; 
  float ypos, speed; String st; HLine[] others; 
  HLine (float y, float s, String st_in, HLine[] oin) {  
    ypos = y; 
    speed = s; 
    st = st_in;
    child = h1;
//    child = h1;
  }
   
  void addChild(){
  child = h2;
  }
  
  void update() { 
    ypos += speed; 
    if (ypos > width) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
    text(st, height/2, ypos);
    line(width/2, ypos, width/2, child.ypos);
  } 
  

}
