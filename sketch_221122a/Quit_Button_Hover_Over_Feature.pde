void quitButtonHoverOverFeature() {
   if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
       quitButtonColour = red; //Remember Day Mode
       //Logical Rectangle Boolean True only when hover over active
    } else {
      quitButtonColour = white; //Remember Night Mode
    } //End Quit Button Colour 
    //
}//End quitButtonHoverOverFeature
