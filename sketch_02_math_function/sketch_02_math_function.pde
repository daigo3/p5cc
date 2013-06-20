int x = 177;
int y = -189;
float a = 32.75;
float b = -70.38;

float[] numbers = { a, b, x, y };

println("The absolute value of " + a + " is " + abs(a));  // 32.75
println("The absolute value of " + b + " is " + abs(b));  // 70.38
println("The absolute value of " + y + " is " + abs(y));  // 189

println("The closest int value greater than (or equal to) " + x + " is " + ceil(x));  // 177
println("The closest int value greater than (or equal to) " + a + " is " + ceil(a));  // 33
println("The closest int value greater than (or equal to) " + b + " is " + ceil(b));  // -70

println("The closest int value less than (or equal to) " + y + " is " + floor(y));    // -189
println("The closest int value less than (or equal to) " + a + " is " + floor(a));    // 32
println("The closest int value less than (or equal to) " + b + " is " + floor(b));    // -71

println("The closest int value to " + a + " is " + round(a));  // 32
println("The closest int value to " + b + " is " + round(b));  // -70

println("The square number of " + x + " is " + sq(x));  // 31329
println("The square number of " + b + " is " + sq(b));  // -4953.34439

println("The square root of " + x + " is " + sqrt(x));
println("The square root of " + a + " is " + sqrt(a));
println("The square root of " + b + " is " + sqrt(b));

println("The smallest number in the list {" + a + "," + b + "," + x + "," + y + "} is " + min(numbers));
println("The largest number in the list {" + a + "," + b + "," + x + "," + y + "} is " + max(numbers));

println("The distance between (" + x + ", " + y + ") and (" + a + ", " + b + ") is " + dist(x, y, a, b));
