// Rest Orb

void setup() {
  size(500, 500);
  background(255);

  // Inputs
  int hourIWoke = 7;
  float hoursSlept = 7.5;
  int coffeeCups = 10;

  // Rest score in [0,1] (simple model)
  float restScore = hoursSlept / 8.0;            // 8h ideal
  restScore -= abs(hourIWoke - 7) * 0.3;        // farther from ~7am = worse
  restScore -= coffeeCups * 0.08;                // each cup reduces rest
  restScore = constrain(restScore, 0, 1);

  // Circle size from restScore (uses += and *=)
  float d = width;          // base diameter
  d *= restScore;   // compound multiply


  // tired→darker, rested→lighter
  int c = int(restScore * 255);
  fill(c);
  circle(width/2, height/2, d);

  // Console output only (no on-canvas labels)
  println("restScore:", nf(restScore,1,2));
  println("coffeeCups:", coffeeCups);
}
void draw() {}
