boolean beach = true;
int sunSet = (100);
int sunSetSky = (27);
int sunRise = (700);
float cloudX;
float cloudY;
float cloud2X;
float cloud2Y;

void setup(){
  size(1000,800);
  println("Click to activate suneset");
  println("Press 'S' to switch to Snowy");
  println("Press 'B' to switch back to Beach");
  cloudX = random(0,width);
  cloudY = random(0,375);
  cloud2X = random(0,width);
  cloud2Y = random(0,375);
}
void draw(){
  if(beach == true){
  background(sunSetSky,228,245);
  
  //sand
  fill(#F5D51B);
  noStroke();
  rect(0,600,width,200);
  
  //ocean
  fill(#266AED);
  rect(0,475,width,125);
  
  //sun
  fill(255,255,0);
  ellipse(500,sunSet,100,100);
  
  //boat
  fill(255);
  triangle(717,371,717,460,800,460);
  rect(717,460,10,25);
  fill(#6F4D4D);
  rect(650,485,150,25);
  
  //sign
  fill(#6F4D4D);
  rect(100,625,150,75);
  fill(#4D0A0A);
  rect(140,700,20,75);
  rect(200,700,20,75);
  fill(255);
  textSize(25);
  text("Welcome to",110,650);
  text("Goo Lagoon",105,675);
}
else{
  background(3,56,80);
  
  //sun
  fill(255,255,0);
  ellipse(500,sunRise,100,100);
  
  //snow
  fill(#F0F3F5);
  noStroke();
  rect(0,600,width,200);
  
  //ice lake
  fill(#B7E9FF);
  noStroke();
  rect(0,475,width,125);
  
  //moon
  fill(#AFB5B7);
  ellipse(500,sunSet,100,100);
 
  //snowman
  fill(255);
  ellipse(781,642,50,50);
  ellipse(781,690,70,70);
  ellipse(781,750,90,90);
  fill(#FC8B00);
  rect(781,640,35,5);//carrot
  fill(0);//eyes
  ellipse(776,630,5,5);
  ellipse(796,630,5,5);
  rect(769,587,30,30);
  rect(756,617,50,5);
  
  //frozen sign
  fill(#6F4D4D);
  rect(100,625,150,75);
  fill(#4D0A0A);
  rect(140,700,20,75);
  rect(200,700,20,75);
  fill(225);
  rect(100,610,150,15);
  textSize(25);
  text("Welcome to",110,650);
  text("Goo Lagoon",105,675);
  //ice
  fill(#9BF6FF);
  triangle(109,700,119,724,124,700);
  triangle(224,697,234,731,245,699);
  triangle(167,697,183,724,186,695);
    }
    //clouds
    fill(230);
    ellipse(cloudX,cloudY,120,75);
    ellipse(cloud2X,cloud2Y,120,75);
  }

void keyPressed(){
  //println(keyCode);
  if (keyCode == 66) beach = true;
  else if (keyCode == 83) beach = false;
}

void mousePressed(){
  if (beach == true){
  if(sunSet < 400){
  sunSet = sunSet + 50;
  }
  if(sunSetSky < 240){
    sunSetSky = sunSetSky + 40;
  }
  if (sunSet == 400){
  }
  }
  else{
  if(sunRise > 100){
    sunRise = sunRise - 25;
  }
  sunSet = sunSet - 50;
  }
  //println(mouseX + ", " + mouseY);
}
