class Upgrade {


  int x;
  int y;
  int price;
  float boost;
  int counter =1; 

  Upgrade(int _x, int  _y, int cost, float add) {
    x = _x;
    y = _y;
    price = cost;
    boost = add;
  }

  void buy(float cur_money, Shark s) {
    if (isInside()) {
      if (price > cur_money) {
        text("need more money", 30, 30);
        fill(200);
      } else {
        fill(125);
        score -= price;
        s.add += boost;
        counter ++; 
        price *=counter; 
        
      }
    }
  }

  boolean isInside() {

    if (mouseX < x + 100  && mouseX > x && mouseY > y && mouseY < y+50) {
      return true;
    }

    return false;
  }

  void display() {
    fill(0,0,255); 
    rect(x, y, 200, 50);
    fill(0); 
    text(price, x, y+ 30); 
  }
}
