import processing.opengl.*;

int lightMode;
int lightDirection;

void setup() {
    size( 640, 480, OPENGL );

    lightMode = 0;
    lightDirection = 0;
}

void draw() {
    background( 0 );
    drawLight();

    pushMatrix();
        translate( width / 2, height / 2, 0 );
        pushMatrix();
            rotateY( radians( frameCount ) );
            fill( 255 );
            noStroke();
            sphere( 100 );
        popMatrix();

        pushMatrix();
            rotateZ( radians( frameCount ) );
            rotateX( radians( frameCount/2 ) );
            fill( 255 );
            noStroke();
            box( 150 );
        popMatrix();
    popMatrix();
}

void drawLight() {
    switch( lightMode ) {
        case 0:
            noLights();
            break;

        case 1:
            lights();
            break;

        case 2:
            if( lightDirection == 0 ) {
                directionalLight( 255, 128, 0, 0, -1, 0 );  // UP
            } else if( lightDirection == 1) {
                directionalLight( 0, 255, 0, 1, 0, 0 );  // RIGHT
            } else if( lightDirection == 2) {
                directionalLight( 255, 0, 255, 0, 1, 0 );  // DOWN
            } else if( lightDirection == 3) {
                directionalLight( 0, 255, 255, -1, 0, 0 );  // LEFT
            }
            break;
        case 3:
            ambientLight( 0, 255, 255 );
            break;
        case 4:
            pointLight( 255, 255, 0, 100, height * 0.3, 100 );
            break;
        case 5:
            spotLight( 128, 255, 128, 800, 20, 300, -1, .25, 0, PI, 2 );
            break;
        default:
            noLights();
            break;
    }
}

void keyPressed() {
    switch( key ) {
        case 'n':
            lightMode = 0;  // no light
            break;
        case 'l':
            lightMode = 1;  // lights
            break;
        case 'd':
            lightMode = 2;  // directional light
            break;
        case 'a':
            lightMode = 3;  // ambient light
            break;
        case 'p':
            lightMode = 4;  // point light
            break;
        case 's':
            lightMode = 5;  // spot light
            break;
    }

    if( key == CODED ) {
        switch( keyCode ) {
            case UP:
                lightDirection = 0;
                break;
            case RIGHT:
                lightDirection = 1;
                break;
            case DOWN:
                lightDirection = 2;
                break;
            case LEFT:
                lightDirection = 3;
                break;
        }
    }
}