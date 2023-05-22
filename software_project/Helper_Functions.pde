import java.util.Collections;

void subjectSelected() {
  
  // Geography was selected
  if (subSelected.equals( "Geography" )) {
    easyFile = loadStrings("Geography/Easy.txt");
    moderateFile = loadStrings("Geography/Moderate.txt");
    hardFile = loadStrings("Geography/Hard.txt");   
  } 
  
  // Biology was selected
  else if (subSelected.equals( "Biology" )) {
    easyFile = loadStrings("Biology/Easy.txt");
    moderateFile = loadStrings("Biology/Moderate.txt");
    hardFile = loadStrings("Biology/Hard.txt");
  }
  
  // Create questions based on the file and mode
  easyQ = new Questions(easyFile, mode);
  moderateQ = new Questions(moderateFile, mode);
  hardQ = new Questions(hardFile, mode);
}


void loadQuestions() {

  // Easy mode was chosen
  if (lvl <= 1) { 
    questionSet = easyQ;
  } 

  // Moderate mode was chosen
  else if (lvl == 2) {
    questionSet = moderateQ;
  }

  // Hard mode was chosen
  else if (lvl == 3) {
    questionSet = hardQ;
  }

  // Get questions and split it
  numOfQuestions = questionSet.fileName.length;
  question = questionSet.getQuestion();
  splitQuestion = question.split("");
  
  // Get the answers and randomize the options
  answer = questionSet.getAnswer(); 
  options = questionSet.randomizeSelection(4); 
}


void showText() {

  // Answer's y-value
  int yVal = 330;

  // Displays the question on screen
  question = String.join("", splitQuestion);
  text(question, 200, 130, 500, 500);

  // FOR THE ANSWER
  text("Possible Answers:", 200, 300);
  textSize(answerSize); 
  
  // Add the answer to the array
  optionsArray.add(answer);
  
  // Adds all the remaining options to the array
  for (int i = 0; i < options.length; i++) {
    optionsArray.add(options[i]);
  }
  
  // If the difficulty level has not changed, shuffle options and locate the correct answer
  if (!sliderChanged) {
    Collections.shuffle(optionsArray);
    answerLocation = optionsArray.indexOf(answer);
  }
  
  else {
    current = 0;
    sliderChanged = !sliderChanged; // Makes sure that the answers are still shuffled after changing the bar
  }
  
  // Outputs the remaining options
  for (int i = 0; i < optionsArray.size(); i++) {
    textSize(answerSize); 

    // Creates the remaining options
    text(String.valueOf(i + 1) + ". " + optionsArray.get(i), 200, yVal);

    // Set new y-value
    yVal += answerSize;
  }
  
  // Empty the array
  optionsArray.clear();
}

void nextQuestion() {
  
  question = questionSet.nextQuestion(current, pastQuestions);
  answer = questionSet.getAnswer();
  options = questionSet.randomizeSelection(4);
  splitQuestion = question.split("");

  // All the questions have been asked
  if (question.equals( "finished")) {
    windowName = "end";
  }
  
  // If endless mode, rotate through the questions
  if (mode == "Endless") {
    pastQuestions = rotateArrayList(pastQuestions, question, randomness);
  }
  
  // Add the displayed question to the array
  pastQuestions.add(question);
}

void checkAnswer() {
  
  // User selected the answer
  if (buttonClicked == answerLocation) { 
    checkLocation();
    
    if (!answerSelected) {
      correct++;
      //current++;
      answerSelected = true;
    }
    
    attempts = 0;
  }
  
  // Otherwise, increase their number of attempts
  else {
    attempts++; 
  }
  
  // If the user has run out of attempts
  if (numOfTries - attempts == 0) {
    checkLocation(); 
    
    if (!answerSelected) {
      //current++;
    }
    
    answerSelected = true;
    attempts = 0;
  }
}

void checkLocation() {
  if (answerLocation == 0) {
    answer1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
    answer2.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer3.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer4.setLocalColorScheme(GCScheme.RED_SCHEME);
  }
    
  // Answer was the second option
  else if (answerLocation == 1){
    answer1.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer2.setLocalColorScheme(GCScheme.GREEN_SCHEME);
    answer3.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer4.setLocalColorScheme(GCScheme.RED_SCHEME);
  }
  
  // Answer was the third option
  else if (answerLocation == 2) {
    answer1.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer2.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer3.setLocalColorScheme(GCScheme.GREEN_SCHEME);
    answer4.setLocalColorScheme(GCScheme.RED_SCHEME);
 }
 
  // Answer was the fourth option
  else if (answerLocation == 3) {
    answer1.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer2.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer3.setLocalColorScheme(GCScheme.RED_SCHEME);
    answer4.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  }
}

ArrayList<String> rotateArrayList(ArrayList<String> arrayLst, String currentQ, int randomLvl) {
  ArrayList<String> newArrayLst = arrayLst;
  String pastValue;
  
  // If the arrayList is not big enough to be rotated yet, the current question will simply be added.
  if (arrayLst.size() < randomLvl) {
    newArrayLst.add(currentQ); 
  } 
  
  else {
    for (int i = 0; i < arrayLst.size()-1; i++) {
      
      if (i == 0) {
        pastValue = arrayLst.get(i);
        newArrayLst.set(i, currentQ);
      } 
      
      else {
        pastValue = arrayLst.get(i);
        newArrayLst.set(i, pastValue);
      }
    }
  }
  return newArrayLst;
  
}

String[] deleteElemInArray(String[] pastArray, String elem) {
  ArrayList<String> newArray = new ArrayList<String>();

  for (int i = 0; i < pastArray.length; i++) {
    if (!pastArray[i].equals(elem)) {
      newArray.add(pastArray[i]);
    }
  }

  String[] newArr = newArray.toArray(new String[newArray.size()]);
    return newArr;
}


int calculatePercent(float correct, float total) {
  return round((correct/total) * 100);
}
