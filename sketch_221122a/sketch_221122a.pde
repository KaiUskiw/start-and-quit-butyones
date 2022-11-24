//Global variables
int appWidth, appHeight;
Boolean start=false, noNowreallystart=false ;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, white=#FFFFFF , red=#FF000D ;
//
void setup() 
{

  size(400,300); //Landscape
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
  if ( noNowreallystart==true ) {
    program();
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
