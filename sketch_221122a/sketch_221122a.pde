//Global variables
int appWidth, appHeight;
Boolean start=false, noNowreallystart=false ;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() 
{
  //Display & Orientation Algorithms not considered yet
  size(400,300); //Landscape
  //fullscreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //
  //Population
  float centerX = appWidth * 1/2;
  float centerY = appHeight * 1/2;
  quitButtonX = centerX - ( appWidth *1/4 );
  quitButtonY = centerY - ( appHeight *1/4 );
  quitButtonWidth = ;
  quitButtonHeight = ;

} //End setup
//
void draw() 
{
  if ( noNowreallystart==true ) {
    background(110); //Night Mode not considered yet
   rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button with Hoverover
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
  //
} //End mousePressed
//
//End Main Program
//
