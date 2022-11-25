//Global variables
int appWidth, appHeight;
int fontSize;
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
String title = "start", footer="quit";
PFont titleFont;
Boolean start=false, noNowreallystart=false ;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, white=#FFFFFF , red=#FF000D , blue=#0074D6 ;
//
void setup() 
{

  size(500,600); //Landscape
  //fullscreen(); //displayWidth, displayHeight
  displayOrientation();
  appWidth = width;
  appHeight = height;
  //
  population();
  //
} //End setup
//
void draw() 
{
  rect(120,100,180,100);
  if ( noNowreallystart==true ) {
    program();
    //
titleFont = createFont("Haettenschweiler", 55); //Verified the font exists in processing.JAVA
//
//Layout or text space and typographical features
rect(titleX, titleY, titleWidth, titleHeight); 
rect(footerX, footerY, footerWidth, footerHeight);
//
//Repeated Executed Code
fill(blue);
textAlign(CENTER, CENTER);
fontSize = 50; //Largest size given window
textFont(titleFont, fontSize);
text( title, titleX, titleY, titleWidth, titleHeight);
text( footer, footerX, footerY, footerWidth, footerHeight);
  } 
} //End draw
//
void keyPressed() 
{
  //Post-OS Level Start Button
  if ( key==' ' && start==true ) noNowreallystart = true;
  //
  //Prototype Key Board Quit Button OR Shortcut
  if ( key=='Q' || key=='q') exit() ;
  if ( key==CODED && keyCode == ESC ) exit();
} //End keyPressed
//
void mousePressed() 
{
  //
  //OS Level Start Button
  start = true;
  println("To Start, Press the Space Bar, if you can't do that, cry about it.");
  //Hint Bug if continue pressing mouse
  //
  //Quit Button: Logical Rectangle, see println
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
} //End mousePressed
//
//End Main Program
//
