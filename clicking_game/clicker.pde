class Shark {

  int add = 1;
  int x;
  int y;


  Shark() {
    x = 100;
    y = 100;
  }



  boolean isInside() {

    if (mouseX < x + 50 && mouseX > x-50 && mouseY > y -50 && mouseY < y+50) {
      return true;
    }

    return false;
  }

}
