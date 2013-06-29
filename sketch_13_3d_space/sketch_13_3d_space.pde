import processing.opengl.*;

float depth;
float zSpeed;

void setup() {
    size( 640, 480, OPENGL );
    depth = 0;
    zSpeed = -1;
    smooth();
}

void draw() {
    depth += zSpeed;

    if( depth <= -1000 || depth >= 0 ) {
        zSpeed *= -1;
    }

    background( 255 );

    noFill();
    stroke( 0 );
    for( int i = 0; i < 10; i++ ) {
        pushMatrix();
        translate( 0, 0, -i * 100 );
        rect( 0, 0, width, height );
        popMatrix();
    }

    noStroke();
    pushMatrix();
        translate( 0, 0, depth );
        fill( 255, 0, 0 );
        rect( 0, 0, 80, 80 );

        fill( 0, 255, 0 );
        rect( width - 80, 0, 80, 80 );

        fill( 255, 255, 0 );
        rect( width - 80, height - 80, 80, 80 );

        fill( 0, 255, 255 );
        rect( 0, height - 80, 80, 80 );
    popMatrix();
}