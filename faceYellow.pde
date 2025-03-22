class faceYellow {
  
  float xpos, ypos; 
  float w, h, startw, starth;  
  float speed = 8; 
  color c; 
  int inittime, anitime; 
  PImage[] img_arr = new PImage[3];
  
 faceYellow (float tempxpos, float tempypos, float tempw, float temph){
    xpos = tempxpos;
    ypos = tempypos; 
    w = tempw; 
    h = temph; 
    startw = tempw; 
    starth = temph; 
    c = color(204, 255, 204);
    img_arr[0] = loadImage("FaceOrange.png");
    img_arr[1] = loadImage("FacePink.png");
    img_arr[2] = loadImage("FaceYellow.png");
    inittime = millis(); 
    anitime = 300; 
  }

void animate(){
  ellipseMode(CENTER);
  noFill();
  stroke(c);
  ellipse(xpos, ypos, w, h);
  image(img_arr[2], xpos, ypos);
  
  if(millis() < inittime + anitime){
    w = w + speed;
    h = h + speed;
  }
  
  else{
    inittime = millis();
    w = startw;
    h = starth;
    
  }
}
}
