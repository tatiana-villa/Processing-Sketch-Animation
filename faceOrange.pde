class faceOrange {
  float xpos, ypos; 
  float w, h, startw, starth, startx, starty;  
  float speed = 1.5; 
  color c; 
  int inittime, anitime;
  PImage[] img_arr = new PImage[3];
  PShape s;
   
  faceOrange(float tempxpos, float tempypos){
    img_arr[0] = loadImage("FaceOrange.png");
    img_arr[1] = loadImage("FacePink.png");
    img_arr[2] = loadImage("FaceYellow.png");
    xpos = tempxpos;
    ypos = tempypos; 
    startx = tempxpos; 
    starty = tempypos; 
    c = color(204, 255, 204);
   
    inittime = millis(); 
    anitime = 2000; 
  }

void animate(){
  rectMode(CENTER);
  stroke(c);
  image(img_arr[0], xpos, ypos);
  
  if(millis() < inittime + anitime){
    xpos = xpos + speed;
    ypos = ypos + speed;
  }
  
  else{
    inittime = millis();
     xpos = startx;
     ypos = starty;
    
  }
}
}
