int r=400;
public void setup(){
  size(1000,1000);
}
public void draw(){
  background(0,0,0);
  tri(100,100,r);
  if(keyPressed){
    if(key=='d'){
      r+=100;
    }
    if(key=='a'){
      r-=100;
    }
  }
}
public void tri(int x,int y,int len){
  if(len<=20){
    triangle(x,y,x+len,y,x+len/2,y+len);
  }
  else{
    tri(x,y,len/2);
    tri(x+len/2,y,len/2);
    tri(x+len/4,y+len/2,len/2);
  }
}
