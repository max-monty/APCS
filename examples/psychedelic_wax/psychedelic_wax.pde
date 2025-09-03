// Morning Routine Data Portrait
// Demonstration of variables as data → visuals

void setup() {
  size(500, 500);
  background(20);    // Dark background
  noStroke();        // Clean shapes

  // My morning as data
  int hourIWoke = 6;           // Whole number (int)
  float hoursSlept = 7.5;      // Decimal (float)
  int coffeeCups = 2;          // Whole number (int)

  // Transform data into visuals

  // Sleep → moon/sun
  fill(255, 250, 200);
  circle(250, 150, hoursSlept * 30);

  // Wake time → position of the sun
  fill(255, 200, 100, 100);
  circle(hourIWoke * 50, 200, 100);

  // Coffee → circle size
  fill(139, 69, 19);
  circle(200, 400, coffeeCups * 40);


  // Console output for checking data
  println("I woke at " + hourIWoke + " AM");
  println("After " + hoursSlept + " hours of sleep");
  println("Needed " + coffeeCups + " cups of coffee");
}

void draw() {
  // Empty for now
}
