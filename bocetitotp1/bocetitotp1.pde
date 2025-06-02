/*
TP1-Etapa 2; Prototipo.
Julia Ferrari, Michelle González,
Micaela Floch, Lucas Gordillo,
Pilar Fernández,
Comisión Matías.
*/

PImage trazos[];
int cantidad = 4;
PImage mascara;

void setup() {
  size(1200, 600);
  imageMode(CENTER);
  trazos = new PImage[cantidad];
  //mascara = loadImage ("mascara.jpg");
  
  colorMode(HSB, 360, 100, 100);
  
  for ( int i=0; i<cantidad; i++ ) {
    String ufan = "trazo"+nf(i, 2)+".png";
    mascara = loadImage (ufan);
    mascara.filter(INVERT);
    trazos[i] = createImage(368, 100, HSB);
    //  trazos[i] = loadImage(ufan);
    trazos[i].filter(INVERT);
    trazos[i].mask( mascara );
  }
  background(255);
}

void draw() {
  //frameRate(8);
  int cual = int (random(cantidad));
  //float x = random(width -248);
  float x = random(width -88);
  float y = random(height - 60);
  //tint(random (255), random(255), random(255));
  tint(#06498B);
  //Ahora lo de los radianes.
  
  float angulo = radians(map(x, 0, width, 45, 190));
  
  translate(x, y);
  
  rotate(angulo);
  
  angulo+= radians(random(-10, 10));
  
  scale(random(0.35, 0.35));
  image(trazos[cual], 0, 0);
  //image(trazos[cual], x, y);
}
