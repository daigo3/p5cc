import processing.video.*;

Capture cam;

void setup() {
    size( 640, 480 );
    smooth();

    cam = new Capture( this, width, height, 30 );
    cam.start();
}

void draw() {
    background( 255 );
    image( cam, 0, 0 );
}

void captureEvent( Capture cam ) {
    cam.read();
}