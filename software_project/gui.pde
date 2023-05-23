/* =========================================================  //<>//
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

public void startClicked(GButton source, GEvent event) { //_CODE_:start:274724:
    windowName = "play";
    window1.setVisible(true);
    start.setVisible(false);
    subjectSelection.setVisible(false);

} //_CODE_:start:274724: //<>// //<>//

public void subjectChosen(GDropList source, GEvent event) { //_CODE_:subjectSelection:215520:
  subSelected = subjectSelection.getSelectedText();
  subjectSelected();
} //_CODE_:subjectSelection:215520:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:454168:
  appc.background(230);
} //_CODE_:window1:454168:

public void changeDiffLevel(GSlider source, GEvent event) { //_CODE_:diffLevel:484514:
  lvl = diffLevel.getValueI();
  sliderChanged = true;
 
  redraw();
} //_CODE_:diffLevel:484514:

public void answer2_clicked(GButton source, GEvent event) { //_CODE_:answer2:654967:
  buttonClicked = 1;
  checkAnswer();
}

public void answer1_clicked(GButton source, GEvent event) { //_CODE_:answer1:929402:
  buttonClicked = 0;
  checkAnswer();
} //_CODE_:answer1:929402:

public void answer3_clicked(GButton source, GEvent event) { //_CODE_:answer3:262656:
  buttonClicked = 2;
  checkAnswer();
} //_CODE_:answer3:262656:

public void nextQuestionClicked(GButton source, GEvent event) { //_CODE_:nextQuestion:276653:
  answer1.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  answer2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  answer3.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  answer4.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  
  answerSelected = false;
  current++;
  
  nextQuestion();
  showText();
  redraw();
} //_CODE_:nextQuestion:276653:

public void attemptsChanged(GSlider source, GEvent event) { //_CODE_:numTries:752762:
  numOfTries = numTries.getValueI();
} //_CODE_:numTries:752762:

public void answer4_clicked(GButton source, GEvent event) { //_CODE_:answer4:556391:
  buttonClicked = 4;
  checkAnswer();
} //_CODE_:answer4:556391:

public void resetClicked(GButton source, GEvent event) { //_CODE_:reset:241784:

  // Reset the colours
  answer1.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  answer2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  answer3.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  answer4.setLocalColorScheme(GCScheme.BLUE_SCHEME);

  if (reset.getText().equals("Reset")) {
    
    // Reset values and empty the array
    current = 0;
    correct = 0;
    pastQuestions.clear();
    loadQuestions();
    
    reset.setText("Back to Main Menu");
    //reset.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  }
  
  else if (reset.getText().equals("Back to Main Menu")){
    mainMenu();
    reset.setText("Reset");
    redraw(); 
  }
  
} //_CODE_:reset:241784:

// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  start = new GButton(this, 342, 255, 108, 51);
  start.setText("Start");
  start.addEventHandler(this, "startClicked");
  subjectSelection = new GDropList(this, 334, 320, 130, 123, 4, 10);
  subjectSelection.setItems(loadStrings("list_215520"), 0);
  subjectSelection.addEventHandler(this, "subjectChosen");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 300, 500, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  diffLevel = new GSlider(window1, 23, 89, 100, 50, 10.0);
  diffLevel.setLimits(1, 1, 3);
  diffLevel.setNbrTicks(3);
  diffLevel.setStickToTicks(true);
  diffLevel.setShowTicks(true);
  diffLevel.setNumberFormat(G4P.INTEGER, 0);
  diffLevel.setOpaque(false);
  diffLevel.addEventHandler(this, "changeDiffLevel");
  label1 = new GLabel(window1, 8, 80, 37, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Easy");
  label1.setOpaque(false);
  label2 = new GLabel(window1, 47, 80, 57, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Moderate");
  label2.setOpaque(false);
  label3 = new GLabel(window1, 107, 80, 37, 20); 
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Hard");
  label3.setOpaque(false);
  answer2 = new GButton(window1, 174, 169, 80, 30);
  answer2.setText("Answer 2");
  answer2.addEventHandler(this, "answer2_clicked");
  answer1 = new GButton(window1, 37, 169, 80, 30);
  answer1.setText("Answer 1");
  answer1.addEventHandler(this, "answer1_clicked");
  answer3 = new GButton(window1, 37, 239, 80, 30);
  answer3.setText("Answer 3");
  answer3.addEventHandler(this, "answer3_clicked");
  nextQuestion = new GButton(window1, 174, 307, 80, 30); 
  nextQuestion.setText("Next Question");
  nextQuestion.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  nextQuestion.addEventHandler(this, "nextQuestionClicked");
  numTries = new GSlider(window1, 163, 89, 100, 50, 10.0); 
  numTries.setShowValue(true);
  numTries.setLimits(1, 1, 3);
  numTries.setNbrTicks(3);
  numTries.setStickToTicks(true);
  numTries.setShowTicks(true);
  numTries.setNumberFormat(G4P.INTEGER, 0);
  numTries.setOpaque(false);
  numTries.addEventHandler(this, "attemptsChanged");
  
  label4 = new GLabel(window1, 147, 55, 151, 30);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Number of Attempts");
  label4.setTextBold();
  label4.setOpaque(false);
  
  label5 = new GLabel( window1, 5, 55, 151, 30);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Difficulty Mode");
  label5.setTextBold();
  label5.setOpaque(false);
  
  answer4 = new GButton(window1, 174, 239, 80, 30);
  answer4.setText("Answer 4");
  answer4.addEventHandler(this, "answer4_clicked");
  reset = new GButton(window1, 37, 307, 90, 30);
  reset.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  reset.setText("Reset");
  reset.addEventHandler(this, "resetClicked");
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
GLabel label5;
GButton answer4; 
GButton reset; 
