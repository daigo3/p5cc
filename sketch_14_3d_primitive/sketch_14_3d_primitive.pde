import processing.opengl.*;

void setup() {
    size( 640, 480, OPENGL );
}

void draw() {
    background( 255 );
    lights();

    float angleX = radians( mouseX );
    float angleY = radians( mouseY );


    pushMatrix();
        translate( width * 0.3, height * 0.3 );
        rotateX( angleY );
        rotateY( angleX );
        fill( 0, 255, 255 );
        box( 100 );
    popMatrix();

    pushMatrix();
        translate( width * 0.5, height * 0.5 );
        rotateX( angleY );
        rotateY( angleX );
        fill( 0, 255, 0 );
        box( 100, 40, 50 );
    popMatrix();

    pushMatrix();
        translate( width * 0.7, height * 0.3 );
        rotateX( angleY );
        rotateY( angleX );
        fill( 255, 0, 0 );
        sphereDetail( 30 );
        sphere( 75 );
    popMatrix();

    pushMatrix();
        translate( width * 0.3, height * 0.7 );
        rotateX( angleY );
        rotateY( angleX );
        fill( 255, 255, 0 );
        sphereDetail( 6 );
        sphere( 75 );
    popMatrix();

    pushMatrix();
        translate( width * 0.7, height * 0.7 );
        rotateX( angleY );
        rotateY( angleX );
        fill( 255, 0, 255 );
        sphereDetail( 4, 20 );
        sphere( 75 );
    popMatrix();
}