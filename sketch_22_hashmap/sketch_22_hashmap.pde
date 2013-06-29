import java.util.Iterator;
import java.util.Map;

HashMap<String, Float> hm;

void setup() {
    hm = new HashMap<String, Float>();
    hm.put( "Processing", 51.30 );
    hm.put( "openFrameworks", 30.45 );
    hm.put( "cinder", 12.78 );

    noLoop();
}

void draw() {
    Iterator i = hm.entrySet().iterator();

    while( i.hasNext() ) {
        Map.Entry me = ( Map.Entry )i.next();
        println( "Key: " + me.getKey() + ", Value: " + me.getValue() );
    }

    println( "----" );

    println( "Is empty? " + hm.isEmpty() );
    println( "Get 'Processing': " + hm.get("Processing") );
    println( "Number of elements (before remove): " + hm.size() );
    println( "Removed: " + hm.remove("openFrameworks") );
    println( "Number of elemetns (after remove): " + hm.size() );
    println( "Contains key 'openFrameworks': " + hm.containsKey("openFrameworks") );
}