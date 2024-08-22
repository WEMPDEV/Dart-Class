import 'dart:math';

import 'package:math_expressions/math_expressions.dart';

void main() {
  Variable x = Variable('x'), y = Variable('y');
  Power xSquare = Power(x, 2);
  Cos yCos = Cos(y);
  Number three = Number(3.0);
  Expression exp = (xSquare + yCos) / three;
  print(exp);
}
