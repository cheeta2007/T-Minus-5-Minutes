int appWidth, appHeight;
Boolean windowActivated=false
void setup() {size(500, 600);
appWidth = width;
appHeight = height;
println("Display Width", displayWidth, "Display Height", displayHeight);}
println("App Width", appWidth, "App Height", appHeight);
if (appWidth>displayWidth) appWidth=displayWidth;
if (appWidth>displayHeight) appWidth=displayHeight;
println(appWidth, appHeight);
void draw() {if (windowActivated=true) splashScreen();}
void mousePressed() {windowActivated=true}
void keyPressed() {}
