void setup()
{
  size (500, 500  );
  noLoop();
}

int sum = 0;

void draw()
{
    //your code here
    background(255, 255, 255);
    sum = 0;
    //for(int rows = 0; rows < 3; rows++){
      //for(int cols = 0; cols < 3; cols++){
        //Die die = new Die((50 * cols) + 10, (50 * rows) + 10);
        Die die = new Die(10, 10);
        die.show();
      //}
    //}
}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
    //member variable declarations here
    int xPos, yPos, num;
    Die(int x, int y) //constructor
    {
        //variable initializations here
        xPos = x;
        yPos = y;
    }
    void roll()
    {
        //your code here
        num = (int)(Math.random()*7);
    }
    void show()
    {
        //your code here
        roll();
        
        rect(xPos, yPos, xPos + 50, yPos + 50);
    }
}
