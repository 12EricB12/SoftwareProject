/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:454168:
  appc.background(230);
} //_CODE_:window1:454168:

public void changeDiffLevel(GSlider source, GEvent event) { //_CODE_:diffLevel:484514:
  println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:diffLevel:484514:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:654967:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button1:654967:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:929402:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button2:929402:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:262656:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button3:262656:

public void button4_click1(GButton source, GEvent event) { //_CODE_:button4:276653:
  println("button4 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:button4:276653:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:numTries:752762:
  println("numTries - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:numTries:752762:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 300, 500, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  diffLevel = new GSlider(window1, 52, 89, 100, 40, 10.0);
  diffLevel.setLimits(1, 1, 3);
  diffLevel.setStickToTicks(true);
  diffLevel.setShowTicks(true);
  diffLevel.setNumberFormat(G4P.INTEGER, 0);
  diffLevel.setOpaque(false);
  diffLevel.addEventHandler(this, "changeDiffLevel");
  label1 = new GLabel(window1, 29, 76, 37, 17);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Easy");
  label1.setOpaque(false);
  label2 = new GLabel(window1, 73, 76, 57, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Moderate");
  label2.setOpaque(false);
  label3 = new GLabel(window1, 141, 76, 36, 18);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Hard");
  label3.setOpaque(false);
  button1 = new GButton(window1, 6, 244, 80, 30);
  button1.setText("Answer 2");
  button1.addEventHandler(this, "button1_click1");
  button2 = new GButton(window1, 6, 189, 80, 30);
  button2.setText("Answer 1");
  button2.addEventHandler(this, "button2_click1");
  button3 = new GButton(window1, 6, 299, 80, 30);
  button3.setText("Answer 3");
  button3.addEventHandler(this, "button3_click1");
  button4 = new GButton(window1, 148, 359, 80, 30);
  button4.setText("Next Question");
  button4.addEventHandler(this, "button4_click1");
  numTries = new GSlider(window1, 140, 209, 121, 54, 10.0);
  numTries.setShowValue(true);
  numTries.setLimits(1, 1, 2);
  numTries.setShowTicks(true);
  numTries.setNumberFormat(G4P.INTEGER, 0);
  numTries.setOpaque(false);
  numTries.addEventHandler(this, "slider1_change1");
  label4 = new GLabel(window1, 128, 179, 151, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Controls the amount of tries on each question");
  label4.setOpaque(false);
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GSlider diffLevel; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GButton button1; 
GButton button2; 
GButton button3; 
GButton button4; 
GSlider numTries; 
GLabel label4; 
