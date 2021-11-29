int black = 0;//using biniary nums to represent colors on a checker board for console debugging
int white = 1;
float turn;

void setup() {
  size(640, 640);
  surface.setLocation(957, 0);
  rectMode(CENTER);
  stroke(0);
  strokeWeight(10);
}
void draw() {
  background(color(255));
   translate(width/2, height/2);
  for (int i = 1; i < 50; i++){  // i = height
  
    System.out.print("\n");      //line break to make new line after completing a row
    
   for (int j = 1; j < 50 ;j++){    //j = rows
       if((j + i)  % 2 == 1){
         fill(255);
   scale(1);
   rotate(radians(turn));
   rect(0,0,640,640);
   
       System.out.print(black);//used console print to debug checker pattern
       
       }  else  {
         fill(0);
   scale(0.95);
   rotate(radians(turn));
   rect(0,0,640,640);
   
        System.out.print(white);//used console print to debug checker pattern
        
      }
      turn += 0.000001;//rate or rotation
   }
   turn += 0.00001;
  }
}
