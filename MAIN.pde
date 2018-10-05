//add images 
PImage moon;
PImage cloud;
PImage sun;
PImage dragon;

//preping for button and key chaning
boolean dayTime = false;
boolean drraagon = false;

//preping for the dragon to bounce around the screen
float dragon_x = 300;
float dragon_y = 20;
// how much to move the dragon on each frame
float move_x = 1000;
float move_y = -1000;


void setup()
{
  // set screen size
  fullScreen();

  //add images to file
  moon = loadImage("HalfMoon.jpg.png");
  cloud = loadImage("cloud.png");
  sun = loadImage("Sun.png");
  dragon = loadImage("dragon.png");

  //set background colour
  background(0, 20, 55);
  rectMode(CENTER);
  frameRate(2000);
}

void draw()
{
  //creating what happend when the button is clicked
  if (dayTime == false)
  {
    //set background colour
    background(0, 20, 55);
    //creating button day time
    fill(255);
    rect(2600, 20, 400, 200);
    fill(0);
    textSize(40);
    text("Click to make", 2450, 50);
    text("  it day time", 2450, 90);
    //creating moon
    noTint(); 
    image(moon, 100, 100);
    moon.resize(300, 300);
    //grey buildings 
    fill(150);
    rect(300, 1200, 450, 1200);
    rect(850, 1200, 450, 1200);
    rect(1400, 1200, 450, 1200);
    rect(1950, 1200, 450, 1200);
    rect(2500, 1200, 450, 1200);
    //changing window colour
    fill(0);
    rect(2600, 1300, 100, 100);
    rect(1850, 1300, 100, 100);
    rect(960, 1100, 100, 100);
    rect(190, 900, 100, 100);
    rect(2600, 900, 100, 100);
  } else
  {
    background(0, 220, 255);
    //creating button night time
    fill(255);
    rect(2600, 20, 400, 200);
    fill(0);
    textSize(40);
    text("Click to make", 2450, 50);
    text("it night time", 2450, 90);
    //creating sun
    noTint();
    image(sun, -10, -10);
    sun.resize(400, 400);
    //grey buildings 
    fill(150);
    rect(300, 1200, 450, 1200);
    rect(850, 1200, 450, 1200);
    rect(1400, 1200, 450, 1200);
    rect(1950, 1200, 450, 1200);
    rect(2500, 1200, 450, 1200);
    //changing window colour
    fill(255, 255, 0);
    rect(190, 900, 100, 100);
    rect(960, 1100, 100, 100);
    rect(1850, 1300, 100, 100);
    rect(2600, 1300, 100, 100);
    rect(2600, 900, 100, 100);
  }

  //adding cloud images
  image(cloud, 500, 100);
  image(cloud, 750, 300);  
  image(cloud, 1200, 100);  
  image(cloud, 1300, 300);  
  image(cloud, 1100, 200); 
  image(cloud, 1370, 170);
  image(cloud, 100, 300);    
  image(cloud, 1500, 210);
  image(cloud, 1900, 0);
  image(cloud, 2100, 200);
  image(cloud, 2500, 150);

  //creating YELLOW windows for buildings
  fill(255, 255, 0);
  rect(190, 700, 100, 100);
  rect(190, 1100, 100, 100);
  rect(190, 1300, 100, 100);
  rect(190, 1800, 100, 100);
  rect(400, 900, 100, 100);
  rect(400, 700, 100, 100);
  rect(400, 1100, 100, 100);
  rect(400, 1300, 100, 100);
  rect(400, 1800, 100, 100);
  rect(740, 900, 100, 100);
  rect(740, 700, 100, 100);
  rect(740, 1100, 100, 100);
  rect(740, 1300, 100, 100);
  rect(960, 900, 100, 100);
  rect(960, 700, 100, 100);
  rect(960, 1300, 100, 100);
  rect(1300, 900, 100, 100);
  rect(1300, 700, 100, 100);
  rect(1300, 1100, 100, 100);
  rect(1300, 1300, 100, 100);
  rect(1500, 900, 100, 100);
  rect(1500, 700, 100, 100);
  rect(1500, 1100, 100, 100);
  rect(1500, 1300, 100, 100);
  rect(1850, 900, 100, 100);
  rect(1850, 700, 100, 100);
  rect(1850, 1100, 100, 100);
  rect(2050, 900, 100, 100);
  rect(2050, 700, 100, 100);
  rect(2050, 1100, 100, 100);
  rect(2050, 1300, 100, 100);
  rect(2400, 900, 100, 100);
  rect(2400, 700, 100, 100);
  rect(2400, 1100, 100, 100);
  rect(2400, 1300, 100, 100);
  rect(2600, 700, 100, 100);
  rect(2600, 1100, 100, 100);
  //sidewalk 
  fill(50);
  rect(1800, 1800, 4000, 500);

  //creating doors for buildings
  fill(70, 20, 10);
  rect(300, 1475, 110, 150);
  rect(850, 1475, 110, 150);
  rect(1400, 1475, 110, 150);
  rect(1950, 1475, 110, 150);
  rect(2500, 1475, 110, 150);

  //creating the "Click any key for MAGIC" text in button
  fill(255);
  rect(2600, 190, 400, 140);
  fill(0);
  text("Click any key", 2450, 180);
  text(" for MAGIC", 2450, 220);

  //adding dragon
  if (drraagon == true)
  {
    //grey buildings 
    fill(random(255), random(255), random(255));
    rect(300, 1200, 450, 1200);
    rect(850, 1200, 450, 1200);
    rect(1400, 1200, 450, 1200);
    rect(1950, 1200, 450, 1200);
    rect(2500, 1200, 450, 1200);
    //creating YELLOW windows for buildings
    fill(255, 255, 0);
    rect(2600, 1300, 100, 100);
    rect(1850, 1300, 100, 100);
    rect(960, 1100, 100, 100);
    rect(190, 900, 100, 100);
    rect(2600, 900, 100, 100);
    rect(190, 700, 100, 100);
    rect(190, 1100, 100, 100);
    rect(190, 1300, 100, 100);
    rect(190, 1800, 100, 100);
    rect(400, 900, 100, 100);
    rect(400, 700, 100, 100);
    rect(400, 1100, 100, 100);
    rect(400, 1300, 100, 100);
    rect(400, 1800, 100, 100);
    rect(740, 900, 100, 100);
    rect(740, 700, 100, 100);
    rect(740, 1100, 100, 100);
    rect(740, 1300, 100, 100);
    rect(960, 900, 100, 100);
    rect(960, 700, 100, 100);
    rect(960, 1300, 100, 100);
    rect(1300, 900, 100, 100);
    rect(1300, 700, 100, 100);
    rect(1300, 1100, 100, 100);
    rect(1300, 1300, 100, 100);
    rect(1500, 900, 100, 100);
    rect(1500, 700, 100, 100);
    rect(1500, 1100, 100, 100);
    rect(1500, 1300, 100, 100);
    rect(1850, 900, 100, 100);
    rect(1850, 700, 100, 100);
    rect(1850, 1100, 100, 100);
    rect(2050, 900, 100, 100);
    rect(2050, 700, 100, 100);
    rect(2050, 1100, 100, 100);
    rect(2050, 1300, 100, 100);
    rect(2400, 900, 100, 100);
    rect(2400, 700, 100, 100);
    rect(2400, 1100, 100, 100);
    rect(2400, 1300, 100, 100);
    rect(2600, 700, 100, 100);
    rect(2600, 1100, 100, 100);
    //sidewalk 
    fill(50);
    rect(1800, 1800, 4000, 500);

    //creating doors for buildings
    fill(70, 20, 10);
    rect(300, 1475, 110, 150);
    rect(850, 1475, 110, 150);
    rect(1400, 1475, 110, 150);
    rect(1950, 1475, 110, 150);
    rect(2500, 1475, 110, 150);
    //adding cloud images
    tint(random(255), random(255), random(255));
    image(cloud, 500, 100);
    image(cloud, 750, 300);  
    image(cloud, 1200, 100);  
    image(cloud, 1300, 300);  
    image(cloud, 1100, 200); 
    image(cloud, 1370, 170);
    image(cloud, 100, 300);    
    image(cloud, 1500, 210);
    image(cloud, 1900, 0);
    image(cloud, 2100, 200);
    image(cloud, 2500, 150);
    image(dragon, dragon_x, dragon_y);
    dragon.resize(1250, 1250);
  }

  //making dragon bounce around the screen
  dragon_x = dragon_x + move_x;
  dragon_y = dragon_y + move_y;

  if (dragon_x > width) {
    dragon_x = width;
    move_x = -move_x;
  }
  if (dragon_y > height) {
    dragon_y = height;
    move_y = -move_y;
  }
  if (dragon_x < 0) {
    dragon_x = 0;
    move_x = -move_x;
  }
  if (dragon_y < 0) {
    dragon_y = 0;
    move_y = -move_y;
  }
}

//making the button work 
void mousePressed()
{
  if (mouseX > 2400 && mouseX < 3000 && mouseY > -20 && mouseY < 120)
  {
    if (dayTime == false)
    { 
      dayTime = true;
    } else
    {
      dayTime = false;
    }
  }
}
//switching dragon from on to off
void keyPressed ()
{
  drraagon = true;
}
/**
1)  My four (or more) text, images, and/or shapes are:
Clouds, buttons, text in the buttons, dragon, sun/moon, buildings/windows, sidewalk, doors

2)  My one (or more) self-taught animation is/are (PLEASE INCLUDE LINKS):
https://funprogramming.org/15-Ball-bouncing-at-the-window-borders.html

3)  My four (or more) animations that were not learned from online tutorials are:
Button, button switch, tint random, key pressed

4)  When you press any key, this happens:
The buildings and clouds spazz and a dragon spazzes across the screen

5)  When you click the day/night button, this happens:
The background changes and the sun/moon changes to the opposite image
*/
