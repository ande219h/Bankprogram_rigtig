//Opgave 1. Skriv kommentarer i programmet, der forklarer hvad programmet gør!
//Opgave 2. Giv knappen og tekstfeltet et "bedre" visuelt udtryk
//Opgave 3. Lav kontoen om til et objekt
//Opgave 4. Opret flere konto-objekter
//Opgave 5. Opret flere knap-objekter
//Opgave 6. Forbind knapperne med hver konto , så du kan indsætte på de forskellige konti
//Udfordring 6. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 7. Prøv at udtænke en måde at give din konto en rente
ArrayList <Komponent> liste = new ArrayList <Komponent>();

Knap       kontoknap1 = new Knap(30, 100);
Knap       kontoknap2 = new Knap(330, 100);

TekstFelt  tekstFelt = new TekstFelt(30, 40);

KontoFelt  kontoFelt1     = new KontoFelt(30, 150);
KontoFelt  kontoFelt2     = new KontoFelt(330, 150);

Checkbox box=new Checkbox(330, 40, 255);

Komponent komponent=new Komponent();


void setup() {
  size(1000, 500);
  frameRate(60);
  kontoknap1.tekst = "Tryk for indsæt beløb på KONTO1";
  kontoknap2.tekst = "Tryk for indsæt beløb på KONTO2";
  //tilføjelser til arraylist
  liste.add(kontoknap1);
  liste.add(kontoknap2);
  liste.add(tekstFelt);
  liste.add(kontoFelt1);
  liste.add(kontoFelt2);
  liste.add(box);
}

void draw() {
  clear();
  for (Komponent k : liste) {
    k.tegn();
  }
  if (box.erKlikket() && komponent.enter()) {
    kontoFelt1.formue = kontoFelt1.formue + tekstFelt.hentBelob();
    kontoFelt2.formue = kontoFelt2.formue + tekstFelt.hentBelob();
    tekstFelt.ryd();
  } else if (kontoknap1.erKlikket()&& komponent.enter()) {
    kontoFelt1.formue = kontoFelt1.formue + tekstFelt.hentBelob();
    tekstFelt.ryd();
  } else if (kontoknap2.erKlikket() && komponent.enter()) {
    kontoFelt2.formue = kontoFelt2.formue + tekstFelt.hentBelob();
    tekstFelt.ryd();
  }
}

void mousePressed() {
  for (Komponent k : liste) {
    k.registrerKlik();
  }
}

void keyPressed() {
  tekstFelt.tilfojTegn();
  if (key==ENTER) {
    komponent.enterKlikket=true;
  } else {
    komponent.enterKlikket=false;
  }
}
