faceOrange fo1, fo2, fo3, fo4;
faceYellow fy1, fy2, fy3, fy4; 
facePink fp1, fp2, fp3, fp4, fp5;

PImage bg_img;
int starttime; 

void setup() {
  bg_img = loadImage("OrangeSpot.png");
  size (900, 1323);   
  
  fy1 = new faceYellow(50, 50, 3, 3); 
  fy2 = new faceYellow(width/2, height/4, 100, 100); 
  fy3 = new faceYellow(width/4, height/2, 200, 200); 
  fy4 = new faceYellow(width * 0.85, height * 0.65, 320, 320);   //<>//
  
  fo1 = new faceOrange(10, 10); 
  fo2 = new faceOrange(width*.1, height*.1); 
  fo3 = new faceOrange(width*.3, height*.3);
  fo4 = new faceOrange(width * 0.65, height * 0.35);
 
  fp1 = new facePink(0);
  fp2 = new facePink(1);
  fp3 = new facePink(2);
  fp4 = new facePink(3);
  
  starttime = millis(); 
} 

void draw() {
  
  clear();
  background(bg_img);
  fy1.animate(); 
  fy2.animate(); 
  fy3.animate(); 
  fy4.animate();
  
  fo1.animate();
  fo2.animate();
  fo3.animate();
  fo4.animate();
 
  fp1.render(); 
  fp2.render(); 
  fp3.render(); 
  fp4.render();   
} 

void mousePressed() {
  fp1.onOff(true); 
  fp2.onOff(true);
  fp3.onOff(true);
  fp4.onOff(true);
  
} 

void mouseReleased() {
  fp1.onOff(false); 
  fp2.onOff(false);
  fp3.onOff(false);
  fp4.onOff(false); 
}  
