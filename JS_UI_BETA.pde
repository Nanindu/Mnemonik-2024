int aantalKlicks = 0;
int aantalKlicksScherm = 0;
int waardeX = 0;
int waardeY = 100;

int r = 0;
int g = 0;
int b = 255;

void setup() {
  size(700, 800);
  //frameRate(4);
  //fullScreen();

  
 
  
}

void draw() {
  //Blau, Grün, Gelb, Lila & Rot
  // mousePressed && (mouseButton == LEFT) 
  // Ich muss hier irgendetwas machen mit 'void mouseReleased() {}' weil der Knop zu sensibel ist.
  
  
   if (mousePressed && 
      (mouseButton == LEFT) && 
       mouseX >= width/2 - 50 && 
       mouseY >= 0 && 
       mouseX <= width/2 - 50 + 100 && 
       mouseY <= 0 + 100){
     waardeX += 100;
     aantalKlicks++;
     aantalKlicksScherm++;
   } else if (aantalKlicks >= 7) {
     waardeX = 0;
     waardeY += 100;
     aantalKlicks = 0;
   } else if (aantalKlicks >= 49) {
     mousePressed = false;
     waardeX = 0;
     waardeY = 0;
     aantalKlicks = 0;
   } else if (aantalKlicks == 1) {
    r = 0;
    g = 255;
    b = 0;
   } else if (aantalKlicks == 2) {
    r = 255;
    g = 255;
    b = 0;
   } else if (aantalKlicks == 3) {
    r = 255;
    g = 0;
    b = 255;
   } else if (aantalKlicks == 4) {
    r = 255;
    g = 0;
    b = 0;
   } else if (aantalKlicks == 5) {
    r = 0;
    g = 0;
    b = 255;
   } else if (aantalKlicks == 6) {
    r = 0;
    g = 255;
    b = 0;
  } 
   
   fill(r, g, b);
   rect(waardeX, waardeY, 100, 100);
   fill(0);
   text(aantalKlicksScherm, waardeX - 50, waardeY + 50);
   
   
  // Standort und Text des Knopfes.
  // Formel für eine 'schweb' funktion(wenn rectMode != CENTER):
  
  // mouseX >= lokatieX && 
  // mouseY >= lokatieY && 
  // mouseX <= lokatieX + lengteRectX && 
  // mouseY <= lokatieY + lengteRectY
  if (mouseX >= width/2 - 50 && mouseY >= 0 && mouseX <= width/2 - 50 + 100 && mouseY <= 0 + 100){
    fill(155, 0, 155);
  } else {
    fill(255);
  }
  
  
  rect(width/2 - 50, 0, 100, 100);
  fill(0);
  textSize(16);
  text("Klick op mij!!", width/2 - 45, 50);
}



/*
2st

Ich möchte einen Beta für den Yahtzee app erschaffen. 

Lass ich mal mit JS UI anfangen. 

Er muss: 
1. Neues rechteck Zeichnen ○
2. 7 nach ein ander Zeichnen, und denn darunter weiter gehen.  ○
  - onClick() = waarde1 + 1
  - 7* onClick = waarde2 + 1
3. FarbWerte !!!!!! (Hier geht's noch schief...)
4. Wirklich nur auf den Knopf funktionieren ○
  
  
○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
  Erst etwas erschaffen womit ich zahlen kann wie oft dar geklickt ist. 
  So muss der ehrste viereck etwa aussehen:
  
  fill(rood, groen, blauw(255));
  rect(0, 100, 100, 100);
  fill(0);
  text(aantalKlicks, 50, 150);

  fill(voor die kleuren ook een waarde)
  rect(waarde1, waarde2, 2*zelfdeWaarde)

  Blau, Grün, Gelb, Lila Rot
  
  else if (aantalKlicks >= 7) {
     waardeX = 0;
     waardeY += 100;
     aantalKlicks = 0;
   }
   
   
   15.02.2024
   Irgendwo befind sich noch ein bug mit die Farben, sonst habe ich den Knopf selber 
   lößen können, jetzt funktioniert der Code nur noch wenn du auf dem Knopf drückst. 
   
   
*/
