String[] textLines;

void setup() {
    size( 640, 200 );
    smooth();

    textLines = loadStrings("poem.txt");
    noLoop();
}

void draw() {
    background(255);
    translate( 20, height/2 );

    stroke( 128 );
    fill( 255, 128 );

    for( int i = 0; i < textLines.length; i++ ) {
        float d = textLines[i].length();
        ellipse( i * 30, 0, d, d );
        println( i + ". " + textLines[i] );
    }
}