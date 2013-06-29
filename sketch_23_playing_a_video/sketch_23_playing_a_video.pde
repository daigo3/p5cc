import processing.video.*;

Movie m;

void setup() {
    size( 720, 480 );

    m = new Movie( this, "castle.mov" );
    m.loop();
}

void draw() {
    background( 0 );
    image( m, 0, 0, width, height );
}

void movieEvent( Movie m ) {
    m.read();
}