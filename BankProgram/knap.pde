class Knap extends Komponent {

  String tekst;

  float x = 10, y  = 5;
  float h = 25, b = 250;
  boolean klikket;


  Knap(float x, float y) {
    this.x = x;
    this.y = y;
  }
  @Override

    void tegn() {
    fill(100, 0, 0);
    if (klikket) {
      fill(100, 100, 0);
    }
    rect(x, y, b, h, 10);
    fill(255);
    text(tekst, x+10, y+18);
  }

  void registrerKlik() {
    if(!klikket && mousePressed && mouseX < x +b && mouseX > x && mouseY > y && mouseY < y + h) {
      klikket = true;
    } else if (klikket && mousePressed && mouseX < x +b && mouseX > x && mouseY > y && mouseY < y + h) {
      klikket = false;
    }
  }

  boolean erKlikket() {
    return klikket;
  }
}
