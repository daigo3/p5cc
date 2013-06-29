import processing.video.*;

Movie m;
int numPixels;

void setup() {
    size( 740, 480 );
    numPixels = width * height;

    m = new Movie( this, "castle.mov" );
    m.loop();
}

void draw() {
    background( 0 );
    image( m, 0, 0, width, height );

    loadPixels();
    for( int i = 0; i < numPixels; i++ ) {
        float b = brightness( pixels[i] );
        if( b > 100 ) {
            pixels[i] = lerpColor( pixels[i], color(0, 0, 0), map( b, 0, 255, 0, 1 ) );
        }
    }

    updatePixels(); // render manipulated pixels

void movieEvent( Movie m ) {
    m.read();
}