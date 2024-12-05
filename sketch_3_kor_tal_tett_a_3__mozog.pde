int n = 12;  
float radius1 = 150; 
float radius2 = 100;  
float radius3 = 50;  
float angleOffset = 0; 
float offsetX = 200;  
float offsetX2 = 350; 
float speed = 2;  

void setup() {
  size(800, 400);
  noFill();
  stroke(0);
}

void draw() {
  background(255);
  translate(width / 2, height / 2);

  ellipse(0, 0, radius1 * 2, radius1 * 2);
  ellipse(offsetX, 0, radius2 * 2, radius2 * 2);
  ellipse(offsetX2, 0, radius3 * 2, radius3 * 2);

  for (int i = 0; i < n; i++) {
    float angle1 = map(i, 0, n, 0, TWO_PI) + angleOffset;
    float x1 = radius1 * cos(angle1);
    float y1 = radius1 * sin(angle1);
    fill(0); // Make the small circles black
    ellipse(x1, y1, 20, 20);
    noFill();
    
    float angle2 = map(i, 0, n, 0, TWO_PI) + angleOffset;
    float x2 = offsetX + radius2 * cos(angle2);
    float y2 = radius2 * sin(angle2);
    fill(0);
    ellipse(x2, y2, 20, 20);
    noFill();
    
    line(x1, y1, x2, y2);
  }
  
  for (int i = 0; i < n; i++) {
    float angle2 = map(i, 0, n, 0, TWO_PI) + angleOffset;
    float x2 = offsetX + radius2 * cos(angle2);
    float y2 = radius2 * sin(angle2);
    
    float angle3 = map(i, 0, n, 0, TWO_PI) + angleOffset;
    float x3 = offsetX2 + radius3 * cos(angle3);
    float y3 = radius3 * sin(angle3);
    fill(0);
    ellipse(x3, y3, 20, 20);
    noFill();

    line(x2, y2, x3, y3);
  }

  offsetX2 -= speed;
  if (offsetX2 < -offsetX) {
    speed *= -1;
  } else if (offsetX2 > offsetX * 2) {
    speed *= -1;
  }

  angleOffset += 0.01;
}
