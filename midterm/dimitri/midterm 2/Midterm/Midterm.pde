Ball ball;

Obstacles obstacle1;
Obstacles obstacle2;
Obstacles obstacle3;
Obstacles obstacle4;
Obstacles obstacle5;
Obstacles obstacle6;
Obstacles obstacle7;
Obstacles obstacle8;


PImage bg; 
int backgroundfill;


void setup() {
  size(480, 320);
  ball = new Ball(10, 268, 15);

  obstacle1 = new Obstacles(70, 268 - 5, 15, 13);
  obstacle2 = new Obstacles(100 + 110, 268 - 5, 15, 13);
  obstacle3 = new Obstacles(100 + 220, 268 - 5, 15, 13);
  obstacle4 = new Obstacles(100 + 295, 268 - 5, 15, 13);
  obstacle4 = new Obstacles(100 + 365, 268 - 5, 15, 13);
  obstacle5 = new Obstacles(100 + 460, 268 - 5, 15, 13);
  obstacle6 = new Obstacles(100 + 520, 268 - 5, 15, 13);
  obstacle7 = new Obstacles(100 + 600, 268 - 5, 15, 13);
  obstacle8 = new Obstacles(100 + 680, 268 - 5, 15, 13);

  bg = loadImage("bg.jpg");
}

void draw() {
  fill(0);

  background(0);
  image(bg, 0, 0);
  ball.displayBall();
  ball.moveBall();
  obstacle1.displayObstacle();
  obstacle2.displayObstacle();
  obstacle3.displayObstacle();
  obstacle4.displayObstacle();
  obstacle5.displayObstacle();
  obstacle6.displayObstacle();
  obstacle7.displayObstacle();
  obstacle8.displayObstacle();

  obstacle1.moveObstacle();
  obstacle2.moveObstacle();
  obstacle3.moveObstacle();
  obstacle4.moveObstacle();
  obstacle5.moveObstacle();
  obstacle6.moveObstacle();
  obstacle7.displayObstacle();
  obstacle8.displayObstacle();
  obstacle1.collision(ball.bx, ball.by);
  obstacle2.collision(ball.bx, ball.by);
  obstacle3.collision(ball.bx, ball.by);
  obstacle4.collision(ball.bx, ball.by);
  obstacle5.collision(ball.bx, ball.by);
  obstacle6.collision(ball.bx, ball.by);
  obstacle7.collision(ball.bx, ball.by);
  obstacle8.collision(ball.bx, ball.by);
 
}