public void setup()
{
  noLoop();
  size(1000,1000);
}

public void draw()
{
  background(0,0,0);
  sierpinski(100,900,800);
  
}

public void sierpinski(int x, int y, int len) 
{
  fill((int)(Math.random()*20),(int)(Math.random()*20),(int)(Math.random()*20));
   stroke((int)(Math.random()*100),(int)(Math.random()*100),(int)(Math.random()*100));
  
  if(len<=20){
    triangle(x,y,x+len,y,x+len/2,y-len);
    triangle(x,y,x+len/2,y,x-len/2,y-len/2);

  } else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
