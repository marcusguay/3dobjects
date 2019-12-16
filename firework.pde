class firework{
    float x, y,

    z, vx, vz;
  int lives;
  int cd;
  float speed;
  firework(float _x, float _y, float _z, float _vx, float _vz){
    x=350;
    y=230;
    z=370;
    speed=1;
    vx=0;
    vz=0;
    lives=1;
    cd=1;
  }





void show(){
     pushMatrix();
    translate(x, y, z);
    fill(#FA4242);
    stroke(0);
    box(20,40,20);
    popMatrix();
  
  pushMatrix();
    translate(x, y+10, z);
    fill(255);
    stroke(0);
    box(20,10,20);
    popMatrix();
    
    

    
      pushMatrix();
    translate(x, y-10, z);
    fill(255);
     stroke(0);
    box(20,10,20);
    popMatrix();
    
     pushMatrix();
    translate(x, y-23.5, z);
    fill(255);
     stroke(0);
    box(30,10,30);
    popMatrix();
    
       pushMatrix();
    translate(x, y-25, z);
    fill(#FA4242);
     stroke(0);
    box(15,15,15);
    popMatrix();
    
}

void act(){
 
  y=y-1*speed;
 speed=speed+0.25;
if(y<-500){
  lives=0;
  fireworks.add(new firework(lx,ly,lz,direction.x,direction.y));
  while( cd<100){
 fps.add(new fp(x,y,z,direction.x,direction.y)); 
  cd++;}
}
  
}

}
