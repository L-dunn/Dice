void setup()
{
  size (500, 500);
  noLoop();
}

int sum = 0;
int space = 10;
int dieSize = 60;
int numRows = 3;
int numCols = 3;

void draw()
{
    //your code here
    background(255, 255, 255);
    sum = 0;
    for(int rows = space; rows < (numRows * (dieSize + space)) + 10; rows += (dieSize + space)){
      for(int cols = space; cols < (numCols * (dieSize + space)) + 10; cols += (dieSize + space)){
        Die die = new Die(rows, cols);
        die.show();
      }
    }
    text("Sum of dice: " + sum, 250, 450);
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
        rect(xPos, yPos, dieSize, dieSize);
        roll();
        sum += num;
        fill(0);
        
        
        //odd rolls
        if(num % 2 == 1){
          //1
          ellipse(xPos + (0.5 * dieSize), yPos + (0.5 * dieSize), (dieSize / 6), (dieSize / 6));
          if(num >= 3){
            //3
            ellipse(xPos + (0.25 * dieSize), yPos + (0.25 * dieSize), (dieSize / 6), (dieSize / 6));
            ellipse(xPos + (0.75 * dieSize), yPos + (0.75 * dieSize), (dieSize / 6), (dieSize / 6));
          }
          if(num > 3){
            //5
            ellipse(xPos + (0.75 * dieSize), yPos + (0.25 * dieSize), (dieSize / 6), (dieSize / 6));
            ellipse(xPos + (0.25 * dieSize), yPos + (0.75 * dieSize), (dieSize / 6), (dieSize / 6));
          }
        }
        //even rolls
        if(num % 2 == 0){
          //2
          ellipse(xPos + (0.25 * dieSize), yPos + (0.25 * dieSize), (dieSize / 6), (dieSize / 6));
          ellipse(xPos + (0.75 * dieSize), yPos + (0.75 * dieSize), (dieSize / 6), (dieSize / 6));
          if(num >= 4){
            //4
            ellipse(xPos + (0.75 * dieSize), yPos + (0.25 * dieSize), (dieSize / 6), (dieSize / 6));
            ellipse(xPos + (0.25 * dieSize), yPos + (0.75 * dieSize), (dieSize / 6), (dieSize / 6));
          }
          if(num > 4){
            //6
            ellipse(xPos + (0.25 * dieSize), yPos + (0.5 * dieSize), (dieSize / 6), (dieSize / 6));
            ellipse(xPos + (0.75 * dieSize), yPos + (0.5 * dieSize), (dieSize / 6), (dieSize / 6));
          }
        }
        
    }
}
