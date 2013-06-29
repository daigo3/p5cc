import processing.video.*;

Capture cam;

int numPixels;
int threshold;

void setup() {
    size( 640, 480 );
    smooth();

    cam = new Capture( this, width, height, 30 );
    cam.start();

    numPixels = cam.width * cam.height;
    threshold = 127;
}

void draw() {
    if( cam.available() ) {
        cam.read();

        loadPixels();
        for( int i = 0; i < numPixels; i++ ) {
            float b = brightness( cam.pixels[i] );
            // draw black and white
            if( b > threshold ) {
                pixels[i] = color( 255 );
            } else {
                pixels[i] = color( 0 );
            }
        }
        updatePixels();
    }

    fill( 255, 0, 0 );
    noStroke();
    rect( 10, 10, 110, 20 );
    fill( 255 );
    text( "threshold: " + threshold, 14, 24 );
}

void keyPressed() {
    if( key == CODED ) {
        if( keyCode == UP ) {
            threshold++;
        }

        if( keyCode == DOWN ) {
            threshold--;
        }
    }
}