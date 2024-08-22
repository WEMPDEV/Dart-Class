void main() {
  int a = 10;
  int b = 0;
  int res;
  // for try and on handlers
  try {
    res = a ~/ b;
    print(res);
  } on UnsupportedError {
    print("cannot divide by zero, try again!");
  } finally {
    print("object");
  }

  // for try throw and catch handlers

  checkAge(int age) {
    if (age < 0) {
      throw new FormatException("age can not be less than 0");
    }
    print(age);
  }

  try {
    checkAge(-30);
  } catch (e) {
    print(e);
  }
}
