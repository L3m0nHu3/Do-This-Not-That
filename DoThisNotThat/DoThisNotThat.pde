//Global Variables
//
void setup() 
{
  //Display Geometry
  size(600, 400);//Landscape
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) {
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls :p; //Ternary Operator, repeats the If-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation == ls ) { //Test for chosen display orientation
  println("Good to go.");
  } else {
    appWidth *= 0; //assignment operator, works like appWidth = appWidth * 0
    appHeight *=0; //assignment operator, works like appHeight = appHeight * 0
    println(instruct);
  }
  //
  //Population using appWidth and appHeight
  //
}//End setup
//
void draw() 
{
  background(black);
  rect();
  rect();
  rect(); //Button 1
  ellipse(); //Button 2
  //
  //Text for Buttons
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN program
//
