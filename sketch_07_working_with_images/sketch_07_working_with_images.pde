PImage img;

boolean pixelMode = false;
int copyWidth = 50;
int copyHeight = 3;

void setup() {
  size( 640, 480 );
  smooth();

  img = loadImage("SANY0002.jpg");
}

void draw() {
  int x1 = floor( random( width ) );
  int y1 = floor( random( height ) );

  int x2 = floor( random( width ) );
  int y2 = floor( random( height ) );

  if ( pixelMode ) {
    color c1 = img.get( x1, y1 );
    color c2 = img.get( x2, y2 );

    img.set( x1, y1, c2 );
    img.set( x2, y2, c1 );
  } 
  else {
    PImage crop1 = img.get( x1, y1, copyWidth, copyHeight );
    PImage crop2 = img.get( x2, y2, copyWidth, copyHeight );
    img.set( x1, y1, crop2 );
    img.set( x2, y2, crop1 );
  }

  image( img, 0, 0 );
}

