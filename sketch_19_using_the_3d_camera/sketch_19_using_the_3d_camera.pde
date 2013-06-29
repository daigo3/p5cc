float x;
float z;

void setup() {
    size( 640, 480, P3D );

    x = 0;
    z = 0;

    noStroke();
}

void draw() {
    background( 255 );
    lights();

    // ground
    beginShape();
    fill( 255, 0, 0 );
    vertex( 0, height, 0 );
    fill( 255, 255, 0 );
    vertex( 0, height, -1000 );
    fill( 0, 255, 0 );
    vertex( width, height, -1000 );
    fill( 0, 0, 255 );
    vertex( width, height, 0 );
    endShape( CLOSE );

    // cube
    fill( 255 );
    pushMatrix();
        translate( width/2, height - 50, -500 );
        box( 100 );
    popMatrix();

    // camera
    x = cos( radians( frameCount ) ) * 1000;
    z = sin( radians( frameCount ) ) * 1000;
    //camera( x, 0, z, width/2, height - 50, -500, 0, 1, 0 );
    // camera( eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ )
    camera( mouseX, mouseY, z, width/2, height - 50, -500, 0, 1, 0 );
}
