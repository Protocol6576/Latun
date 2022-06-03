import 'package:practical_work_6_1/practical_work_6_1.dart'
    as practical_work_6_1;

void main(List<String> arguments) {
  int a = 125;
  int b = 75;
  divisor divis = new divisor(125, 75);
  print('НОД($a, $b) = ${divis.calculate()}');
}

class divisor {
  int a = 0;
  int b = 0;

  divisor(int enA, int enB) {
    a = enA;
    b = enB;
  }

  void enterVal(int enA, int enB) {
    a = enA;
    b = enB;
  }

  int calculate() {
    int d = 0;
    while (b != 0 && a != 0) {
      if (a > b) {
        a %= b;
      } else {
        b %= a;
      }
      d = a + b;
    }
    return d;
  }
}
