

Shark shark;
Upgrade upgrades[];
public float score;
int x = 250;
int y = 0;


void setup() {
  size(500, 500);
  shark = new Shark();
  upgrades = new Upgrade[5];
  score = 0;
  for (int upgrade = 0; upgrade < 5; upgrade++) {
    
    int cost = int(pow(10, upgrade+1));
    float add = cost*0.1;
    upgrades[upgrade] = new Upgrade(x, y, cost, add);
    y+= 60;
  }
}


void draw() {
  background(255);

 
  for (int upgrade = 0; upgrade < 5; upgrade++) {
    upgrades[upgrade].display();
  }
 fill(0);
  textSize(17);
  text(score + " people" , 40, 30);
  
  line(0, height/3, width, height/3);
  levelup();

  
}

void mousePressed() {
  if (shark.isInside()) {
    score += shark.add;
  }
  for (int i= 0; i< 5; i++) {
    if (upgrades[i].isInside()) {
      upgrades[i].buy(score, shark);
       
    }
  }
}

void levelup() {
  PImage bshark;
  PImage gw;
  if (score < 50) {
    bshark = loadImage("babyshark.jpeg");
    image(bshark, shark.x -50, shark.y-50, 100, 100);
  }
  else if (score <75) {
    gw = loadImage("gw.jpeg"); 
    image(gw, shark.x -50, shark.y-50, 200,200); 
  }
   
  
}
//void displaynum(){ 
  
//  if (log(score) > 0){ 
   
//  }
//    else if(log(score) > 2){ 
//      score = score%1000; 
//      text(score + "P million", 30,30); 
//    } 
//  }
