
// Create an instance of class Tree
Tree mytree = new Tree();
Tree myothertree = new Tree();

void setup() {
  
}

void draw() {
  // Draw our instance (mytree) of class Tree
  mytree.draw();
  myothertree.draw();
}

// Define a class, Tree
class Tree {
   
   // Give it a variable
   float height = 20;
  
   // Define its setup function
   Tree() {
    
   }
  
   // Give it some functions, like draw!
   void draw() {
      rect( ..... );
   } 
  
}
