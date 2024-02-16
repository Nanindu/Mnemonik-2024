/*
Voor het oefenen van coderen wil ik graag een kopie maken van de Clipnote app. 
Om de basis te leren van tekenen & animatie op de computer. 
Clipnote was gemaakt in C++, maar ik denk dat het kan in processing.
Ik denk dat dit kan in processing.

16.02.2024
Laat ik eerst maar beginnen met het namaken van de interface, dat lijkt me het makkelijkst.
Ik weet nog niet hoe ik kan wisselen tussen verschillende tabbladden in 1 software, dus 
laat ik beginnen met de tekenfuncktie zelf.

1. Vierkantjes maken ○
2. 


*/



int huidigBeeld = 1;
int totaalAantalBeelden = 1;

int penseelDikte = 1;

void setup() {
  size(640, 480);
  cursor(CROSS);
  
  
}

void draw() {
  // Grootte van ieder vierkantje = 32, er zijn 20 op de X-as en 15 op de Y-as.
   
  // Formule voor alle vierkantjes op de achtergrond. 
  for (int x = 0; x <= width; x += 32) { 
    for (int y = 0; y <= height; y += 32) {
      stroke(204, 204, 255);
      rect(x, y, 32, 32); 
    }
  }
  
// Bovenste knoppen  
fill(139,127,254);
rect(0, 0, 64, 32); 

rect(64, 0, 144, 32, 16);
rect(208, 0, 144, 32, 16);
rect(352, 0, 144, 32, 16);
rect(496, 0, 144, 32, 16);
noFill();

// Tekst in de knoppen
fill(0);
textSize(24);
text("↓", 8, 24);

text("Penseel", 80, 24);
text("Lagen", 224, 24);
text("Beelden", 368, 24);
text("Geluid", 512, 24);
noFill();

// Welke Frame zit je nu op?
fill(240, 230, 255);
rect(0, 32, width, 32);
noFill();

fill(0);
text(huidigBeeld + " / " + totaalAantalBeelden, width/2 - 16, 56);
noFill();

// Patronen
fill(0);
rect(0, 64, 32, 32);
noFill();


// Kleuren uitkiezen
fill(0);
rect(0, 96, 32, 32);
noFill();

fill(155);
rect(32, 96, 32, 32);
noFill();

fill(255);
rect(32*2, 96, 32, 32);
noFill();

fill(254,0,0);
rect(32*3, 96, 32, 32);
noFill();

fill(207,0,153);
rect(32*4, 96, 32, 32);
noFill();

fill(155,0,154);
rect(32*5, 96, 32, 32);
noFill();

fill(104,0,155);
rect(32*6, 96, 32, 32);
noFill();

fill(1,33,255);
rect(32*7, 96, 32, 32);
noFill();

fill(1,103,103);
rect(32*8, 96, 32, 32);
noFill();

fill(0,153,153);
rect(32*9, 96, 32, 32);
noFill();

fill(98,206,0);
rect(32*10, 96, 32, 32);
noFill();

fill(255,255,1);
rect(32*11, 96, 32, 32);
noFill();

fill(254,206,0);
rect(32*12, 96, 32, 32);
noFill();

fill(255,154,0);
rect(32*13, 96, 32, 32);
noFill();

fill(255,114,0);
rect(32*14, 96, 32, 32);
noFill();

// Huidige Penseel grootte weergeven
stroke(0);
fill(204,204,255);
rect(32*16, 64, 32*4, 32*4);


fill(255);
rect(32*16, 32*6, 32*4, 32*2);
noFill();
noStroke();

// Tekst voor de Penseel grootte
fill(0);
text("Grootte", 32*16.75, 32*6.75);
text("-", 32*16.25, 32*7.75);
text("+", 32*19.25, 32*7.75);
text(penseelDikte, 32*17.75, 32*7.75);
noFill();


// Hele stap = 32, halve stap = 16
}
