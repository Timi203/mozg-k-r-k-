float _speed=10;
Ground []g;
int nGround=0;

void setup()
{
  size(800,600);
  fullScreen();

  nGround=ceil(width/677.0)+1;
  g = new Ground[nGround];

  String[] files4={"hatter.svg"};
  String[] files5={"hatter_2.svg"};

  for(int i=0;i < nGround;i=i +1)
  {
  
    g[i]= new Ground();
    g[i].addAnimation(files4,10);
    g[i].addAnimation(files5,10);
    g[i].location.x = -((float)width/2.0)+((float)g[i].boxx * (float)i);
  }
  
  s = new message();
  s.location.x=(-width/2)+100;
  s.location.y=(height/2)-200;
  String[] files = {"7.svg","8svg.svg"}; //running
  s.addAnimation(files,10);
  String[] files1 = {"7.svg","8svg.svg"}; //running backwards
  s.addAnimation(files1,10);
  String[] files2 = {"jump.svg,jump_2.svg"};  //jump up
  s.addAnimation(files2,10);
  String[] files3={"fall_down.svg"}; //fallimg down
  s.addAnimation(files3,10);
  String[] files18 = {"DEAD.svg"}; //beeing dead`
  s.addAnimation(files18,10); 
  s.currentAni=0;

}

void draw()
{
  background(color(124));
  //shape(g[0].ani[0].frames[0],0,0);
  
  translate(width/2,height/2);
  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i].update();
    g[i].check();
    g[i].display();
  }


s.update();
s.check();
s.display();
}
void keyPressed()
{
  s.jump();
{
