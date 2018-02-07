public void setup()
{
  size(400, 400);
}
public void draw()
{
  background(50, 150, 200);
  fractal(200, 20, 300);

}
public void mouseDragged()//optional
{
}
public void fractal(int x, int y, int w) 
{
  x = mouseX;
  ellipse(x, y, w, w);
  if(w <= 10)
  {
    ellipse(x, y, w, w); 
  }
  else
  {
    fractal(x, y+mouseY/30, (int)w-10);
  }
}