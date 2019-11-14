class Checkbox extends Komponent {

  float x;
  float y;
  float b=35;
  float h=35;
  float f=255;
  Checkbox(float x, float y, float f) {
    this.x=x;
    this.y=y;
  }
  @Override
    void tegn() {
    fill(f);
    rect(x, y, b, h, 5);
    fill(255);
    text("Klik her for at indsætte penge på begge konti", x+b+10, y+h/2);
  }
  void registrerKlik() {
    if (!klikket && mousePressed && mouseX < x +b && mouseX > x && mouseY > y && mouseY < y + h) {
      klikket = true;
      f=150;
    } else if (klikket && mousePressed && mouseX < x +b && mouseX > x && mouseY > y && mouseY < y + h) {
      klikket = false;
      f=255;
    }
  }
  boolean erKlikket() {
    return klikket;
  }
}
