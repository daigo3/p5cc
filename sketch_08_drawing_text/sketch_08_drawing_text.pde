PFont alice;
PFont varela;

void setup() {
    size( 640, 480 );
    smooth();

    alice = loadFont("data/Alice-Regular-48.vlw");
    varela = loadFont("data/Varela-48.vlw");

    strokeCap( SQUARE );
}

void draw() {
    background( 255 );
    fill( 128, 0, 0 );

    textFont( alice, 48 );
    textAlign( LEFT );
    text("Hello, I'm Alice", 20, 50);

    textFont( varela, 38 );
    text("I'm a line of text, set in varela", 20, 100);

    stroke( 128, 0, 0 );
    strokeWeight( 1 );
    line( 20, 110, 620, 110 );
    line( 20, 112, 620, 112 );

    // -----

    fill( 0 );

    textFont( alice, 24 );
    text("The quick brown fox jumps over the lazy dogs.(24)", 20, 140 );

    textFont( alice, 18 );
    text("The quick brown fox jumps over the lazy dogs.(24)", 20, 164 );

    textFont( alice, 12 );
    text("The quick brown fox jumps over the lazy dogs.(24)", 20, 182 );

    stroke( 128 );
    strokeWeight( 3 );
    line( 20, 196, 620, 196 );

    // ----
    fill( 245 );
    stroke( 128 );
    strokeWeight( 1 );
    rect( 20, 200, 600, 110 );

    stroke( 128 );
    line( width/2, 200, width/2, 310 );

    fill( 128 );
    stroke( 128 );
    triangle( width/2 - 4, 200, width/2 + 4, 200, width/2, 204 );
    triangle( width/2 - 4, 310, width/2 + 4, 310, width/2, 306 );

    fill( 0 );
    textFont( varela, 24 );
    textAlign( LEFT );
    text("since I left you", width/2, 235);

    textAlign( CENTER );
    text("symmetry is boring", width/2, 262);

    textAlign( RIGHT );
    text("flush to the right", width/2, 295);

    textFont( alice, 12 );
    textAlign( LEFT );
    String multiline = "In typography, leading refers\n";
    multiline += "to the distance between the\n";
    multiline += "baselines of successive lines\n";
    multiline += "of type.";

    float standardLeading = ( textAscent() + textDescent() ) * 1.275f;

    textLeading( standardLeading );
    text( multiline, 20, 340 );
    textLeading( standardLeading * 0.75 );
    text( multiline, 220, 340 );
    textLeading( standardLeading * 1.5 );
    text( multiline, 420, 340 );

    textFont( varela, 36 );
    String s = "textWidth";
    float w = textWidth( s );
    fill( 128, 0, 0 );
    text( s, 20, 450 );
    noStroke();
    rect( 20, 455, w, 8 );
}