//Création de notre tableau color qui stockera les différentes couleurs 
//disponible pour colorier nos carrés
//Ici, on aura 100 couleurs différentes
color[] colors = new color[100];

//Initialisation de notre tableau indexe
//Chaque numéro correspondera à une couleur
//Ce nombre est choisi au hasard afin de varier au maximun les couleurs
int[][] indexes = {
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),}, 
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)), }, 
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)), }, 
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)), }, 
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)), }, 
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)), }, 
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)), }, 
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)), }, 
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)), }, 
  { int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)),int(random(100)), }, 
};

//On initialise la taille de notre fenêtre 250*250
//On rempli notre tableau color avec les couleurs qu'on va utiliser
//Les couleurs sont choisi aléatoirement et au nombre de 100
void setup() {
  size(500, 500);
  colorMode(HSB);
  stroke(255);
  for(int i = 0; i< 100;i++){
  colors[i] = color(random(255),random(255),random(255));
  }
}

//On va ensuite remplir nos carrés avec notre tableau color et indexes et la fonction fill
//On créer aussi nos carrés avec la fonction rect
void draw() {
  for ( int row = 0; row < 10; row++ ) {
    for ( int square = 0; square < 10; square++ ) {
      fill( colors[ indexes[row][square] ] );    
      rect( 50 * square, 50 * row, 50, 50 );
    }
  }
}

//A chaque clique de souris, on récupère la position X et Y de la souris pour
//savoir sur quel carré on a cliqué. On peut alors changé la couleur du carré
//avec la derrière ligne : indexes[y][x]=int(random(0,100)); 
//-> on donne un nombre aléatoire entre 0 et 100 qu'on place dans notre tableau indexes à l'endroit où on a cliqué
void mousePressed(){
  int x = mouseX / 50;
  int y = mouseY / 50;
  if( x >= 0 && x < 10 && y >= 0 && y < 10 ){
    indexes[y][x]++;
    indexes[y][x]=int(random(0,100));
  }
}
