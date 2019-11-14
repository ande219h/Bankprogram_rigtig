class Konto extends Komponent{
  float konto = 0;//der laves en float konto1 med værdien 0
  String kontoNavn="";
  float posX=10;

  Konto(String kontoNavn) {
    this.kontoNavn=kontoNavn;

  }
  
  //funktionen udskrivKonto laves
  void udskrivKonto() {
    fill(255);//fill er hvid
    textSize(32);//tekststørrelsen er 32
    text(kontoNavn, 10, 150);//der laves noget tekst med stringen Konto1 i de koordinater der står
    text(konto, 200, 200);//Der laves tekst med værdien af konto1
    textSize(12);//tekstørrelsen sættes til 12
  }
}
