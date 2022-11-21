String[] readNumbers; //array of strings to read the data from the file
String joinNumbers; //string to join the data from the file
String[] splitNumbers; //array of strings to split the data from the file
int[] numbers; //arra of integers to convert the data from the file to integers
int targetNumber=333; //target number for the search to locate
float time; //variable to store time passed
boolean endTimer; //boolean to end the timer

void setup() {
  size(400, 400); //size of the run window
  readNumbers = loadStrings("Numbers.txt"); //loads the data from the file
  joinNumbers=join(readNumbers, ","); //joins the data from the file
  splitNumbers=split(joinNumbers, ","); //splits the data from the file
  numbers=int(splitNumbers); //converts the data from the file to integers
}

void draw() {
  background(0); //white background
  timer();
  linearSearch();
}

void timer() { //displays the time between opening the program and the targetNumber being found
  if (endTimer==false) //if the timer has not ended
    time=millis(); //the time is equal to the number of milliseconds passed since opening the program

  textSize(50); //changes the text size to 50
  textAlign(CENTER); //aligns the text in the center of the screen
  text(time/1000, width/2, height/2); //displays the time passed in the middle of the screen
}

void linearSearch() { //searches the data by checking every number until it finds the target number
  for (int index=0; index<numbers.length; index++) { //index variable has an initial value of 0, must be less than the length of numbers array, and increases by increments of 1
    if (numbers[index]==targetNumber && endTimer==false) { //if the target number is found and the timer has not ended
    println(targetNumber + " is in index " + index + " of the array.");
      endTimer=true; //the timer ends
    }
  }
}
