int m=0;
int n=0;
int o=0;
int p=0;
int q=0;
int r=0;
int t=0;
int u=0;
int v=0;
String f;
char temp[]={'a', 'a', 'a', 'a', 'a', 'a'};
char d[]={'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
char b[][] ={{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'},
            {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}};
PImage digits[] = new PImage[10];
PImage alpha[][] = new PImage[2][26];
void setup(){
 size(900,150);
 frameRate(1);
 background(255, 255, 255);
 for(int i=0;i<10;i++){
   digits[i] = loadImage(i+".png");
 }
 for(int i=0;i<26;i++){
   alpha[0][i] = loadImage(b[0][i]+".png");
 }
 for(int i=0;i<26;i++){
   alpha[1][i] = loadImage(b[1][i]+"1.png");
 }
}

void draw(){
  background(random(100,255), random(100,255), random(100,255));
  m=int(random(10));
  image(digits[m],0,0,random(135,150),random(135,150));
  n=int(random(26));
  t=int(random(1));
  image(alpha[t][n],150,0,random(135,150),random(135,150));
  o=int(random(26));
  u=int(random(1));
  image(alpha[v][o],300,0,random(135,150),random(135,150));
  line(random(40),random(100),random(450,900),random(200));
  line(random(900),random(150),random(170),random(150));
  line(random(800,900), 0, random(650,800), 150);
  p=int(random(10));
  image(digits[p],450,0,random(135,150),random(135,150));
  q=int(random(26));
  v=int(random(1));
  image(alpha[v][q],600,0,random(135,150),random(135,150));
  r=int(random(10));
  image(digits[r],750,0,random(135,150),random(135,150));
  temp[0]=d[m];
  temp[1]=b[t][n];
  temp[2]=b[u][o];
  temp[3]=d[p];
  temp[4]=b[v][q];
  temp[5]=d[r];
  f= new String(temp);
  //saveFrame(f+".png");
  println(f);
}
