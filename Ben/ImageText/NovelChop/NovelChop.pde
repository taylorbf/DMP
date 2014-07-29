
//Define an empty array of Strings (texts)
String[] chop;

void setup() {
  size(1000,600);
  // Define a string of text
  String novel = "Old McDonald Had A Farm";
  // Turn the string into an array,
  // splitting at each space
  chop = novel.split(" ");
  // Print the first piece of array, to test
  println(chop[0]);
}

void draw() {
  // Trippify
  fill(255,20);
  rect(0,0,width,height);
  
  // Define text color and size
  fill(0);
  textSize(40);
  
  // Get random number between 0 and array length
  float randIndex = random(chop.length);
  // Turn that random number into an integer
  int chopIndex = int(randIndex);
  // Use the integer to find a random word
  String randWord = chop[chopIndex];
  // Draw the word
  text(randWord,random(width),random(height));
}
