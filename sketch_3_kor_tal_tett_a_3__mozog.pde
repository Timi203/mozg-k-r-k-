float circleSize = 0;
float maxCircleSize = 300;
float redCircleY = 500;
float angle = 0;
float rectSize = 0;
float rectScale = 1;

boolean isLoading = true;
int phaseTime = 2500;
int lastPhaseChange = 0;

void setup() {
  size(800, 800);
  background(12, 22, 45);
  frameRate(60);
  lastPhaseChange = millis();
}

void draw() {
  if (millis() - lastPhaseChange > phaseTime) {
    isLoading = !isLoading;
    lastPhaseChange = millis();
  }

  background(12, 22, 45);
  translate(width / 2, height / 2);

  stroke(255, 255, 255, 50);
  strokeWeight(1);
  pushMatrix();
  rotate(-angle * 0.3);
  ellipse(0, 0, circleSize * 0.6, circleSize * 0.6);
  popMatrix();

  stroke(255, 255, 255, 30);
  rotate(angle * 0.1);
  line(-400, -400, 400, 400);
  line(-400, 400, 400, -400);

  stroke(255, 204, 0, 150);
  strokeWeight(2 + 1 * sin(angle * 2));
  pushMatrix();
  rotate(angle);
  line(-300, 0, 300, 0);
  line(0, -300, 0, 300);
  popMatrix();

  noFill();
  stroke(255, 255, 255, 200);
  ellipse(0, 0, circleSize, circleSize);
  stroke(255, 255, 255, 100);
  ellipse(0, 0, circleSize / 2, circleSize / 2);

  pushMatrix();
  rotate(-angle * 0.5);
  stroke(255, 204, 0, 100);
  arc(0, 0, 300, 300, HALF_PI, PI);
  arc(0, 0, 300, 300, PI + HALF_PI, TWO_PI);
  popMatrix();

  fill(255, 50, 50, 200);
  noStroke();
  ellipse(0, redCircleY - height / 2, 50, 50);
  redCircleY = 300 + 100 * sin(angle);

  stroke(255, 204, 0, 150);
  noFill();
  pushMatrix();
  scale(rectScale);
  rect(-rectSize / 2, -rectSize / 4, rectSize, rectSize / 2);
  popMatrix();

  if (isLoading) {
    if (circleSize < maxCircleSize) circleSize += 3;
    if (rectSize < 200) rectSize += 2;
  } else {
    if (circleSize > 0) circleSize -= 3;
    if (rectSize > 0) rectSize -= 2;
  }

  rectScale = 1 + 0.1 * sin(angle * 2);
  angle += radians(1);

  pushMatrix();
  translate(-150, 0);
  rotate(HALF_PI);
  scale(0.7);
  stroke(255, 255, 255, 10);
  strokeWeight(2);
  pushMatrix();
  rotate(-angle * 0.3);
  ellipse(0, 0, circleSize * 0.6, circleSize * 0.6);
  popMatrix();

  stroke(255, 255, 255, 5);
  rotate(angle * 0.1);
  line(-400, -400, 400, 400);
  line(-400, 400, 400, -400);

  stroke(255, 204, 0, 50);
  strokeWeight(4 + 1 * sin(angle * 2));
  pushMatrix();
  rotate(angle);
  line(-300, 0, 300, 0);
  line(0, -300, 0, 300);
  popMatrix();

  noFill();
  stroke(255, 255, 255, 25);
  ellipse(0, 0, circleSize, circleSize);
  stroke(255, 255, 255, 10);
  ellipse(0, 0, circleSize / 2, circleSize / 2);

  pushMatrix();
  rotate(-angle * 0.5);
  stroke(255, 204, 0, 20);
  arc(0, 0, 300, 300, HALF_PI, PI);
  arc(0, 0, 300, 300, PI + HALF_PI, TWO_PI);
  popMatrix();

  fill(255, 50, 50, 50);
  noStroke();
  ellipse(0, redCircleY - height / 2, 50, 50);
  redCircleY = 300 + 100 * sin(angle);

  stroke(255, 204, 0, 50);
  noFill();
  pushMatrix();
  scale(rectScale);
  rect(-rectSize / 2, -rectSize / 4, rectSize, rectSize / 2);
  popMatrix();
  popMatrix();

  pushMatrix();
  translate(150, 0);
  rotate(HALF_PI);
  scale(0.7);
  stroke(255, 255, 255, 10);
  strokeWeight(2);
  pushMatrix();
  rotate(-angle * 0.3);
  ellipse(0, 0, circleSize * 0.6, circleSize * 0.6);
  popMatrix();

  stroke(255, 255, 255, 5);
  rotate(angle * 0.1);
  line(-400, -400, 400, 400);
  line(-400, 400, 400, -400);

  stroke(255, 204, 0, 50);
  strokeWeight(4 + 1 * sin(angle * 2));
  pushMatrix();
  rotate(angle);
  line(-300, 0, 300, 0);
  line(0, -300, 0, 300);
  popMatrix();

  noFill();
  stroke(255, 255, 255, 25);
  ellipse(0, 0, circleSize, circleSize);
  stroke(255, 255, 255, 10);
  ellipse(0, 0, circleSize / 2, circleSize / 2);

  pushMatrix();
  rotate(-angle * 0.5);
  stroke(255, 204, 0, 20);
  arc(0, 0, 300, 300, HALF_PI, PI);
  arc(0, 0, 300, 300, PI + HALF_PI, TWO_PI);
  popMatrix();

  fill(255, 50, 50, 50);
  noStroke();
  ellipse(0, redCircleY - height / 2, 50, 50);
  redCircleY = 300 + 100 * sin(angle);

  stroke(255, 204, 0, 50);
  noFill();
  pushMatrix();
  scale(rectScale);
  rect(-rectSize / 2, -rectSize / 4, rectSize, rectSize / 2);
  popMatrix();
  popMatrix();
}
