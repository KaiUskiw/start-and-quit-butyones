void program() {
   background(110); //Night Mode not considered yet
    //
    debuggingLogicalRectangle();
    //Quit Button Hover Over Feature
    if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
       quitButtonColour = red; //Remember Day Mode
       //Logical Rectangle Boolean True only when hover over active
    } else {
      quitButtonColour = white; //Remember Night Mode
    } //End Quit Button Colour 
    //
    fill(quitButtonColour);
   rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button with Hoverover
}//End program
