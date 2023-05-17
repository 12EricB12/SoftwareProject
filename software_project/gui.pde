/* ========================================================= //<>// //<>//
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

public void button1_click1(GButton source, GEvent event) { //_CODE_:start:274724:
  windowName = "Main";
  window1.setVisible(true);
  start.setVisible(false);
  subjectSelection.setVisible(false);
} //_CODE_:start:274724: //<>//

public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:subjectSelection:215520:
  println("subjectSelection - GDropList >> GEvent." + event + " @ " + millis());
  subSelected = subjectSelection.getSelectedText();
  println(subSelected);
  //print(subjectSelection.getSelectedText());
} //_CODE_:subjectSelection:215520:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:454168:
  appc.background(230);
} //_CODE_:window1:454168:

public void changeDiffLevel(GSlider source, GEvent event) { //_CODE_:diffLevel:484514:
  lvl = diffLevel.getValueI();
  println(lvl);
  redraw();
} //_CODE_:diffLevel:484514:

public void Answer2(GButton source, GEvent event) { //_CODE_:answer2:654967:
  if (answerLocation == 1) {
    answer1.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer2.setLocalColorScheme(GCScheme.GREEN_SCHEME);
    answer3.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer4.setLocalColorScheme(GCScheme.RED_SCHEME);
    
    current++;
  }
}

public void Answer1(GButton source, GEvent event) { //_CODE_:answer1:929402:
  if (answerLocation == 0) {
    answer1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
    answer2.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer3.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer4.setLocalColorScheme(GCScheme.RED_SCHEME);
    
    correct++;
  }
} //_CODE_:answer1:929402:

public void Answer3(GButton source, GEvent event) { //_CODE_:answer3:262656:
  if (answerLocation == 2) {
    answer1.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer2.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer3.setLocalColorScheme(GCScheme.GREEN_SCHEME);
    answer4.setLocalColorScheme(GCScheme.RED_SCHEME);
    
    correct++;
  }
} //_CODE_:answer3:262656:

public void NextQuestion(GButton source, GEvent event) { //_CODE_:nextQuestion:276653:
  //G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  answer1.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  answer2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  answer3.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  answer4.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  
  nextQuestion();
  showText();
  redraw();
} //_CODE_:nextQuestion:276653:

public void numofTries(GSlider source, GEvent event) { //_CODE_:numTries:752762:
  println("numTries - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:numTries:752762:

public void Answer4(GButton source, GEvent event) { //_CODE_:answer4:556391:
  if (answerLocation == 3) {
    answer1.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer2.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer3.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer4.setLocalColorScheme(GCScheme.GREEN_SCHEME);
    
    correct++;
  }
} //_CODE_:answer4:556391:

public void Reset(GButton source, GEvent event) { //_CODE_:reset:241784:
  println("reset - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:reset:241784:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  start = new GButton(this, 342, 208, 108, 51);
  start.setText("Start");
  start.addEventHandler(this, "button1_click1");
  subjectSelection = new GDropList(this, 353, 274, 90, 60, 2, 10);
  subjectSelection.setItems(loadStrings("list_215520"), 0);
  subjectSelection.addEventHandler(this, "dropList1_click1");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 300, 500, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  diffLevel = new GSlider(window1, 23, 89, 100, 40, 10.0);
  diffLevel.setLimits(1, 1, 3);
  diffLevel.setNbrTicks(3);
  diffLevel.setStickToTicks(true);
  diffLevel.setShowTicks(true);
  diffLevel.setNumberFormat(G4P.INTEGER, 0);
  diffLevel.setOpaque(false);
  diffLevel.addEventHandler(this, "changeDiffLevel");
  label1 = new GLabel(window1, 2, 76, 37, 17);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Easy");
  label1.setOpaque(false);
  label2 = new GLabel(window1, 47, 76, 57, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Moderate");
  label2.setOpaque(false);
  label3 = new GLabel(window1, 111, 76, 36, 18);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Hard");
  label3.setOpaque(false);
  answer2 = new GButton(window1, 174, 169, 80, 30);
  answer2.setText("Answer 2");
  answer2.addEventHandler(this, "snswer2");
  answer1 = new GButton(window1, 37, 169, 80, 30);
  answer1.setText("Answer 1");
  answer1.addEventHandler(this, "Answer1");
  answer3 = new GButton(window1, 37, 239, 80, 30);
  answer3.setText("Answer 3");
  answer3.addEventHandler(this, "Answer3");
  nextQuestion = new GButton(window1, 157, 307, 80, 30);
  nextQuestion.setText("Next Question");
  nextQuestion.addEventHandler(this, "NextQuestion");
  numTries = new GSlider(window1, 163, 89, 121, 54, 10.0);
  numTries.setShowValue(true);
  numTries.setLimits(1, 1, 3);
  numTries.setNbrTicks(3);
  numTries.setStickToTicks(true);
  numTries.setShowTicks(true);
  numTries.setNumberFormat(G4P.INTEGER, 0);
  numTries.setOpaque(false);
  numTries.addEventHandler(this, "numofTries");
  label4 = new GLabel(window1, 147, 60, 151, 30);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Controls the amount of tries on each question");
  label4.setOpaque(false);
  answer4 = new GButton(window1, 174, 239, 80, 30);
  answer4.setText("Answer 4");
  answer4.addEventHandler(this, "Answer4");
  reset = new GButton(window1, 45, 307, 80, 30);
  reset.setText("Reset");
  reset.addEventHandler(this, "Reset");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GButton start; 
GDropList subjectSelection; 
GWindow window1;
GSlider diffLevel; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GButton answer2; 
GButton answer1; 
GButton answer3; 
GButton nextQuestion; 
GSlider numTries; 
GLabel label4; 
GButton answer4; 
GButton reset; 
