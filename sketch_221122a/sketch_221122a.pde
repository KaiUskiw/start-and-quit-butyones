//Global variables
Boolean start=false, noNowreallystart=false ;
//
void setup() {} //End setup
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
