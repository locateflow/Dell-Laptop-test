// Declare and contruct two objects (h1, h2) from the class HLine

String[] words = {"this", "is", "a", "sentence", "and", "it", "is", "not", "a", "word"};
HLine[] oth = new HLine[3];
HLine h1 = new HLine(20, 2.0, "a string", oth, 0); 
HLine h2 = new HLine(50, 2.5, "a string", oth, 1);
HLine h3 = new HLine(75, 3, "no string", oth, 2);

HLine[] sentence = new HLine[words.length];

int w = 400;


 
void setup() 
{
  size(w, w);
  frameRate(30);
  textSize(30);
  textAlign(CENTER);
  oth[0] = h1;
oth[1] = h1;
oth[2] = h3;

for (int i = 0; i < words.length-1; i++){
for (int j = i+1; j < words.length; j++){
  if ( words[i]==words[j]){
    words[i] = "found!";
  }
}
}

for (int i = 0; i < words.length; i++){
  sentence[i] = new HLine(random(100),random(20), words[i], sentence, i);
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

  sentence[round(millis()/1000)%sentence.length].highlightWord();
  sentence[round((millis()+500)/1000)%sentence.length].highlightConnector();

  
} 
 
class HLine {
//  String st; = "a string"; 
  float ypos, speed, x = random(w), xSpeed; String st; HLine[] others; int id;
  HLine (float y, float s, String st_in, HLine[] oin, int id_in) {  
    ypos = y; 
    speed = s; 
    st = st_in;
    others = oin;
    id = id_in;
    xSpeed = speed;
    
//    child = h1;
//    child = h1;
  }
   
  void addChild(){
//  child = h2;
  }
    void highlightWord(){
stroke(25,110,99);
fill(25,110,99);
textSize(50);
text(st, x, ypos);
    
  }
    void highlightConnector(){
stroke(25,110,99);
fill(25,110,99);
    if (id > 0){
    line(x, ypos, others[id-1].x, others[id-1].ypos);
    }    
  }
  
  void update() { 
    ypos += speed;
    x += xSpeed; 
    if (ypos > width || ypos < 0) { 
speed = -speed;
    } 
    if (x > width || x < 0) { 
xSpeed = -xSpeed;
    }
//    line(0, ypos, width, ypos); 
    stroke(255);
    fill(255);
    text(st, x, ypos);
    textSize(30);
    if (id < others.length - 1){
    line(x, ypos, others[id+1].x, others[id+1].ypos);
    }
  } 
  

}
