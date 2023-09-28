void setup()
{
  size (500, 500);
  noLoop();
}

int sum = 0;
int space = 10;

void draw()
{
    //your code here
    background(255, 255, 255);
    sum = 0;
    for(int rows = space; rows < 220; rows += 70){
      for(int cols = space; cols < 220; cols += 70){
        Die die = new Die(rows, cols);
        die.show();
      }
    }
    text("Sum of dice: " + sum, 250, 400);
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
        num = (int)(Math.random() * 6) + 1;
    }
    void show()
    {
        //your code here
        fill(255, 255, 255);
        rect(xPos, yPos, 60, 60);
        roll();
        sum += num;
        fill(0);
        
        
        //odd rolls
        if(num % 2 == 1){
          //1
          ellipse(xPos + 30, yPos + 30, 10, 10);
          if(num >= 3){
            //3
            ellipse(xPos + 15, yPos + 15, 10, 10);
            ellipse(xPos + 45, yPos + 45, 10, 10);
          }
          if(num > 3){
            //5
            ellipse(xPos + 45, yPos + 15, 10, 10);
            ellipse(xPos + 15, yPos + 45, 10, 10);
          }
        }
        //even rolls
        if(num % 2 == 0){
          //2
          ellipse(xPos + 15, yPos + 15, 10, 10);
          ellipse(xPos + 45, yPos + 45, 10, 10);
          if(num >= 4){
            //4
            ellipse(xPos + 45, yPos + 15, 10, 10);
            ellipse(xPos + 15, yPos + 45, 10, 10);
          }
          if(num > 4){
            //6
            ellipse(xPos + 15, yPos + 30, 10, 10);
            ellipse(xPos + 45, yPos + 30, 10, 10);
          }
        }
        
    }
}
