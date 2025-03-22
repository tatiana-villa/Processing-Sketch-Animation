class facePink {
  float xpos, ypos; 
  float l = width/3; 
  float speed = 5;  
  int anitime = 105; 
  int pausetime = anitime * 5;  
  int inittime; 
  int order, lastmove; 
  boolean running; 
  color c;
  PImage[] img_arr = new PImage[3];
 
  facePink(int temporder) {
    img_arr[0] = loadImage("FaceOrange.png");
    img_arr[1] = loadImage("FacePink.png");
    img_arr[2] = loadImage("FaceYellow.png");
    order = temporder; 
    inittime = millis(); 
    running = false; 
    c = color(204, 255, 204);
  } 
  
  void onOff(boolean state) {
    if (state == true) { 
      inittime = millis();
      xpos = mouseX; 
      ypos = mouseY; 
      running = true; 
    }
    else {
      running = false; 
    }  
  }  
  
  void render() {
    if (running == true) {
     image(img_arr[1], xpos, ypos);
     stroke (c); 
     rect(xpos, ypos + (order * 1000), xpos + l, ypos + (order * 1000));
    }
    
      if (millis() < (inittime + anitime)) { 
        this.slide(); 
       }
      else { 
         this.pause();       
       }  
     }   
     
  void slide()  {
    xpos = xpos + 8;
    ypos = ypos + speed;
    lastmove = millis();
  } 
  
  void pause() {
    if (millis () > (lastmove + pausetime)) {
       inittime = millis(); 
     }
  }         
}
