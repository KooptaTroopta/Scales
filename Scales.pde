void setup() {
  size(1000, 1000);
  background(#EA9090);
}
float o = 0;
int flip = 1;
void draw() {
  frameRate(10);
  for (int q = -100; q<=1000; q+=200)
  {
    for (int w = -100; w <=1000; w+=200) {
      birb(w,q,o,o);
      o+=0.5*flip;
      if (o > 200) {
        flip = -1;
        o = 120;
      }
      if (o < 0) {
        flip = 1;
        o = 80;
      }
    }
  }
}
 void birb(int a, int b, float y, float x) {
  noStroke();
  //Translation
  translate(a,b);
  scale(0.4);
  //Top Feathers
  fill(181-(x/200*40),17+(x/200*30),59+(x/200*10));
  ellipse(425,415,600,550);
  ellipse(382,140,80,40);
  rotate(0.15*PI);
  ellipse(430,-80,120,40);
  rotate(-0.15*PI);
  //Eye Shadow
  fill(156-(x/200*60),5,54-(x/200*30));
  ellipse(485,519, 80,60);
  ellipse(525,523, 80,60);
  //Blush
  stroke(#ff96d3,y*(255/200));
  strokeWeight(3);
  for (int i = 0; i < 5; i++) {
    line(410 + i*15, 515 + i*2, 430 + i*15 + i*8, 535 + i*2 + i*8);
  }
  for (int i = 0; i < 5; i++) {
    line(610 - i*15, 515 + i*2, 590 - i*15 - i*8, 535 + i*2 + i*8);
  }
  noStroke();
  //Spots
  fill(156-(x/200*60),5,54-(x/200*30));
  ellipse(644,483, 30,50);
  ellipse(358,475,50,65);
  rotate(-PI/4);
  ellipse(-125,455*sin(atan(390/235)+PI/4),50,70);
  rotate(PI/4);
  ellipse(188,375, 25, 40);
  arc(125, 449, 120, 160, 1.52*PI,2.37*PI);
  arc(630,207,100,100, PI*0.276, PI*1.16);
  //Forehead
  triangle(515,477, 578,445, 430,450);
  fill(181-(x/200*40),17+(x/200*30),59+(x/200*10));
  triangle(515,474, 578,442, 430,447);
  fill(156-(x/200*60),5,54-(x/200*30));
  triangle(460,432, 516,451, 564,424);
  fill(181-(x/200*40),17+(x/200*30),59+(x/200*10));
  triangle(460,429, 516,448, 564,421);
  //Eyeballs
  fill(#FFFFFF);
  ellipse(525,515, 50,50);
  ellipse(487,515, 50,50);
  fill(#1e0708);
  arc(492+(y/30),508-(y/40),20,20,0,2*PI);
  arc(527-(y/30),508-(y/40),20,20,0,2*PI);
  fill(#FFFFFF);
  ellipse(494+(y/30),508-(y/40),8,8);
  ellipse(530-(y/19),508-(y/40),8,8);
  //Eyebrow
  translate(0,-y/30);
  fill(#470209);
  triangle(440,470, 439,495, 510,495);
  triangle(570,470, 571,495, 505,495);
  quad(439,495, 571,495, 571,503, 439,503);
  triangle(571,503, 505,503, 508,510);
  triangle(439,503, 510,503, 508,510);
  translate(0,y/30);
  triangle(127,405, 127,428, 110,420);
  quad(127,433, 127,450, 105,460, 100,428);
  triangle(129,456, 115,463, 130,483);
  //Bottom
  fill(#dbba98);
  arc(513,605,250,100, PI,2*PI);
  arc(504,605,270,80, 0,PI);
  arc(540,560,240,190, PI/5,PI/2);
  arc(520,580,240,190, PI/6,PI/2);
  arc(470,595,300,190, PI/6,PI/2);
  arc(430,666,250,50, 0,PI);
  arc(470,666,330,200, PI,3*PI/2);
  //Beak
  fill(#d68a12);
  triangle(468,560, 512,517, 501,560);
  triangle(468,560, 550,560, 510,580);
  //Tongue
  fill(#ff96d3);
  ellipse(520,535+(y/5), 20+y/40,20+y/5);
  //Beak
  fill(#ebab21);
  triangle(468,560, 512,517, 545,538);
  triangle(580,566, 530,560, 544,537);
  triangle(467,560, 530,560, 545,537);
  fill(#f6cc64);
  triangle(512,517,545,538,538,539);
  quad(558,563,538,539,545,538,580,566);
  fill(#d68a12);
  triangle(468,560, 512,517, 501,560);
  scale(2.5);
  translate(-a,-b);
}

