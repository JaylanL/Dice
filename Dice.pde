 void setup()
  {
    size(1000,1000);
    background(1);
    noLoop();
  }

  void draw()
  { 
   int sum=0;
   background(6,25,116);
   for (int x=30;x<950;x+=70){
    int y=30;
    Die die = new Die(x,y);
    die.show();
     for(y=30;y<850; y+=70){
       Die dieY = new Die(x,y);
       dieY.show();
       sum+=dieY.count;
     }
   }
   fill(0,255,0);
   textSize(55);
   text("Sum=" + sum, 20,900);
  }
  void mousePressed()
  {
      //sum=0;
      redraw();
  }
  class Die //models one single dice cube
  {
    int myX,myY,count;
      //member variable declarations here
      
      Die(int x, int y) //constructor
      {
        myX=x;
        myY=y;
        roll();
          //variable initializations here
      }
      void roll()
      {
          count= (int)(Math.random()*6)+1;
      }
      void show()
      {
          noStroke();
          fill(255,255,255);
          rect(myX,myY,50,50,9);
          if (count==1){
          fill(28,216,215);
    ellipse(myX+25,myY+25,10,10);
          }
           else if(count==2){
            fill(23,227,24);
    ellipse(myX+10,myY+40,10,10);
    ellipse(myX+40,myY+10,10,10);
           }
           else if(count==3){
          fill(216,23,227);
    ellipse(myX+10,myY+40,10,10);
    ellipse(myX+25,myY+25,10,10);
    ellipse(myX+40,myY+10,10,10);
           }
          else if(count==4){
          fill(227,220,23);
    ellipse(myX+10,myY+40,10,10);
    ellipse(myX+10,myY+10,10,10);
    ellipse(myX+40,myY+10,10,10);
    ellipse(myX+40,myY+40,10,10);
          }
          else if(count==5){
          fill(25,29,180);
    ellipse(myX+10,myY+40,10,10);
    ellipse(myX+10,myY+10,10,10);
    ellipse(myX+25,myY+25,10,10);
    ellipse(myX+40,myY+10,10,10);
    ellipse(myX+40,myY+40,10,10);
          }
          else{
          fill(180,25,25);
    ellipse(myX+10,myY+40,10,10);
    ellipse(myX+25,myY+10,10,10);
    ellipse(myX+10,myY+10,10,10);
    ellipse(myX+25,myY+40,10,10);
    ellipse(myX+40,myY+10,10,10);
    ellipse(myX+40,myY+40,10,10);
          }
      }
  }
