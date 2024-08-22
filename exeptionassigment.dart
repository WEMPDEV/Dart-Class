// create a custom exception in Dart for checking a person's age:
class Exception{
  static String errorMessage() => 'Age must be a valid number between 0 and 200.';// class instance
}
class AgeException implements Exception {
 static String errorMessage() => 'Age must be a valid number between 0 and 200.';// class instance
}

void checkAge(dynamic age) {
  if (age is String) {
    throw FormatException('Age must be a number.');
  } else if (age < 0 || age > 200) {
    throw AgeException.errorMessage();
  } else {
    print('Age is valid: $age');
  }
}

void main() {

  try {
    // Example usage:
    //checkAge("twenty"); // This will throw a FormatException
    //checkAge(-5); // This will throw an AgeException
    //checkAge(300); // This will throw an AgeException
    checkAge(25); // This will print "Age is valid: 25"
  } catch (e) {
    print('Error: $e');
  }
}