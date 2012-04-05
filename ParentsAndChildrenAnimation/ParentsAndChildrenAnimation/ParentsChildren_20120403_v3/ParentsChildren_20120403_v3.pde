// Declare and contruct two objects (h1, h2) from the class HLine

String[] words = {"this", "is", "a", "sentence", "and", "it", "is", "not", "a", "word"};
HLine[] oth = new HLine[3];
HLine h1 = new HLine(20, 2.0, "a string", oth, 0); 
HLine h2 = new HLine(50, 2.5, "a string", oth, 1);
HLine h3 = new HLine(75, 3, "no string", oth, 2);
int w = width;
HLine[] sentence = new HLine[words.length];

 
void setup() 
{
  size(800, 800);
  frameRate(30);
  textSize(30);
  textAlign(CENTER);
  oth[0] = h1;
oth[1] = h1;
oth[2] = h3;
for (int i = 0; i < words.length; i++){
  sentence[i] = new HLine(random(100),random(4), words[i], sentence, i);
}

}

void draw() { 
  background(204);
//  h1.update(); 
//  h2.update();
//  h3.update(); 
//  h1.addChild();
//  h2.addChild(); 
//  h3.addChild();
  for (int i = 0; i < words.length; i++){
  sentence[i].update();
}
  
} 
 
class HLine {
//  String st; = "a string"; 
  float ypos, speed, x = random(800); String st; HLine[] others; int id;
  HLine (float y, float s, String st_in, HLine[] oin, int id_in) {  
    ypos = y; 
    speed = s; 
    st = st_in;
    others = oin;
    id = id_in;
    
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
//    line(0, ypos, width, ypos); 
    text(st, x, ypos);
    if (id < others.length - 1){
    line(x, ypos, others[id+1].x, others[id+1].ypos);
    }
  } 
  

}
