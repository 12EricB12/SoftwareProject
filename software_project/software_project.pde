import g4p_controls.*;  //<>// //<>// //<>// //<>//

Questions geoEasy, geoMedium, geoHard, geoQ;

String[] geoEasyQ, geoMediumQ, geoHardQ;

int lvl;
int answerSize = 20;
PFont myFont;


String answer, question;
String mode = "Test";

String[] splitQuestion;
String[] options;
ArrayList<String> optionsArray = new ArrayList<String>();
ArrayList<String> pastQuestions = new ArrayList<String>();
String windowName;
String subSelected = "Geography";

int current = 0;

int aggressiveness = 4; // How "random" you want the questions to be. Be careful setting it too high as the program could run forever
int answerLocation = 0;
int correct = 0;

void setup() {
  size(800, 400);
  background(255);

  createGUI();
  displayStart();
  // Load the text documents
}

void draw() {
  background(254, 221, 216);

  if (windowName == "start") {
    fill(0);
    textSize(50);
    textAlign(CENTER);
    text("Welcome to \n Brainlet", width/2, 100);
  } else if (windowName == "Main") { //<>//
    // Formatting //<>//
    println(subSelected);
    txtLoad();
    textSize(20);
    fill(0);

    textAlign(LEFT);

    loadQuestions();
    showText();

    noLoop();
  } else if (windowName == "End") {
    fill(0);
    textSize(50);
    text("You passed!", width/2-100, 100);
  }
}
