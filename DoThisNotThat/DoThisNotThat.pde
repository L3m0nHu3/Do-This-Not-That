//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseDisplayX, ellipseDisplayY, ellipseDisplayXdiameter, ellipseDisplayYdiameter;
color black=#000000, white=#FFFFFF; //NightMode friendly
Boolean rectON=false, ellipseON = false;
//
String buttonText1= "Press Here";
String buttonText2= "Or Here";
PFont buttonFont;
color darkRed= #AD0003;
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
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  buttonX1 = centerX - appWidth*1/4;
  buttonY1 = centerY + appHeight*1/4;
  buttonWidth1 = appWidth*1/4;
  buttonHeight1 = appHeight*1/4;
  buttonX2 = centerX + appWidth*1/4;
  buttonY2 = buttonY1;
  buttonWidth2 = buttonWidth1;
  buttonHeight2 =  buttonHeight1;
  rectDisplayX = buttonX1;
  rectDisplayY = centerY - appHeight*1/4;
  rectDisplayWidth = buttonWidth1;
  rectDisplayHeight =  buttonHeight1;
  ellipseDisplayX = buttonX2;
  ellipseDisplayY =  rectDisplayY;
  ellipseDisplayXdiameter = appWidth*1/5;
  ellipseDisplayYdiameter = appHeight*1/10;
  //
  //Text Setup
  println("start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then to choose then createFont
  buttonFont = createFont ("TimesNewRomanPSMT", 55);
}//End setup
//
void draw() 
{
  background(black);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1 );
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  if ( rectON==true ) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //Button 1
  if ( ellipseON==true ) ellipse(ellipseDisplayX, ellipseDisplayY, ellipseDisplayXdiameter, ellipseDisplayYdiameter); //Button 2
  //
  //Text Draw, General Code for any text
  fill (darkRed);
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 25);
  //
  //Specific text per button
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  text(buttonText2, buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  fill(white);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  rectON =false;
  ellipseON=false;
  if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) rectON=true;
  if (mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 ) ellipseON=true;
}//End mousePressed
//
//End MAIN program
//
