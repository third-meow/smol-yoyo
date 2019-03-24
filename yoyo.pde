int len = 0;
int change = 1;


boolean up = false;
void setup() {
  
  size(400,400);
}

void draw() {
  if (len >= 80) {
    up = true;
  }
  if (len <= 1) {
    up = false;
  }
  
  if (!up) {
	  change = len/50 + 1;
  } else {
	  change = -(len/50 + 1);
  }
  len += change;
  background(255);
  
  

  stroke(0);
  fill(0);
  rect(mouseX, mouseY, 1, len);
  
  stroke(255);
  fill(0, 0, 255);
  //ellipse(mouseX - 5 - (len / 20), mouseY + len, 12.0 + (len / 20), 12.0 + (len / 20));
  ellipse(mouseX - 5 + (len / 20), mouseY + len, 12.0, 12.0);
  
  
  
  
  
}
