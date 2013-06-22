void setup() {
    size( 640, 480 );
    smooth();
}

void draw() {
    background( 255 );
    drawGrid();

    stroke( 0 );

    // rectangles(yellow)
    fill( 255, 255, 0 );
    rect( 20, 20, 120, 120 );   // top-left point, width, height
    rect( 180, 20, 120, 120, 20 );
    rect( 340, 20, 120, 120, 20, 10, 40, 80 );
    rect( 500, 40, 120, 80 );

    // ellipse(red)
    fill( 255, 0, 0 );
    ellipse( 80, 240, 120, 120 );   // center point, radius, radius
    ellipse( 240, 240, 120, 80 );
    ellipse( 400, 240, 80, 120 );

    // triangle(blue)
    fill( 0, 0, 255 );
    triangle( 560, 180, 620, 300, 500, 300 ); // x1, y1, x2, y2, x3, y3
    triangle( 40, 340, 140, 460, 20, 420 ); 

    // quads(cyan)
    fill( 0, 255, 255 );
    quad( 180, 340, 300, 340, 300, 380, 180, 460 ); // x1, y1, x2, y2, x3, y3, x4, y4
    quad( 400, 340, 440, 400, 400, 460, 360, 400 );
    quad( 500, 340, 620, 400, 500, 460, 560, 400 );

}

void drawGrid() {
    stroke( 235 );

    for (int i = 0; i < height / 10; i++ ) {
        line( 0, i * 10, width, i * 10);
    }

    for( int i = 0; i < width / 10; i++ ) {
        line( i * 10, 0, i * 10, height );
    }

}
