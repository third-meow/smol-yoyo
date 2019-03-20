int len = 0;
int change = 1;

void setup() {
  size(400,400);
}

void draw() {
  if (len > 80) {
    change = -1;
  } else if (len <= 0) {
    change = 1;
  }

  len += change;
  background(255);
  
  stroke(255);
  fill(0, 0, 255);
  //ellipse(mouseX - 5 - (len / 20), mouseY + len, 12.0 + (len / 20), 12.0 + (len / 20));
  ellipse(mouseX - 5 + (len / 20), mouseY + len, 12.0, 12.0);

  stroke(0);
  fill(0);
  rect(mouseX, mouseY, 1, len);
  
  
  
}
