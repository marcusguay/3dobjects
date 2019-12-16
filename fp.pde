class fp{

   float dx,dy,dz,vz,vx,vy;
    float r;
  PVector direction;
  int lives;
  float cd;
fp(float _x, float _y, float _z, float _vx, float _vz){
   dx=_x;
   dy=_y;
   dz=_z;
   cd=50;
   vy=random(-11,11);
   vx=random(-11,11);
   vz=random(-11,11);
  lives=1;

   
   }
  
  void show(){
    
 pushMatrix();
   fill(255);
  translate(dx,dy,dz);
   stroke(0);
rotateX(PI/2);
box(5);
popMatrix();
   
    
    
    
    }
    
    
    void act(){
dx=dx+1.5*vx;
dz=dz+1.5*vz;
dy=dy+vy;
vy=vy+1;
cd=cd-1;
  if(cd<=0){
    lives=0;}

}
}
