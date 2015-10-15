// Import a class from a library.
import 'dart:math' show Random;        

// The app starts executing here.
void main() {                          
  // Print a new object's value. Chain method calls.
  print(new Die(n: 12).roll());
  
  var morri = new Die();
  morri..sides = 7;
  print(morri.showSides());
}

// Define a class.
class Die {                            
  // Define a class variable.
  static Random shaker = new Random(); 
  
  // Define instance variables.
  int sides, value;                    

  // Define a method using shorthand syntax.
  String toString() => '$value';      

  // Define a constructor.
  Die({int n: 6}) {                   
    if (4 <= n && n <= 20) {
      sides = n;
    } else {
      // Support for errors and exceptions.
      throw new ArgumentError(/* */);  
    }
  }
  // Define an instance method.
  int roll() {                         
    // Get a random number.
    return value = shaker.nextInt(sides) + 1; 
  }
  // Define an instance method.
  int showSides() {                         
    // Get a random number.
    return sides; 
  }
}