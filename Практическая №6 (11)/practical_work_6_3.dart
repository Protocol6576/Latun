import 'package:practical_work_6_3/practical_work_6_3.dart'
    as practical_work_6_3;

void main(List<String> arguments) {
  int a = 11;
  doubHex testNum = new doubHex(11);
  print('Число $a в двоичной: ${testNum.toDouble()}');
  print('Число $a в 16-ой: ${testNum.toHex()}');
}

class doubHex {
  int _mainNum = 0;

  doubHex(int mainNum) {
    _mainNum = mainNum;
  }

  String toDouble() {
    int num = _mainNum;

    String binary = (num % 2).toString();
    while (num > 1) {
      num = num ~/ 2;
      binary = (num % 2).toString() + (binary);
    }

    return binary;
  }

  String toHex() {
    String hex = '-';

    switch (_mainNum) {
      case (1):
        hex = '0';
        break;
      case (2):
        hex = '2';
        break;
      case (3):
        hex = '3';
        break;
      case (4):
        hex = '4';
        break;
      case (5):
        hex = '6';
        break;
      case (6):
        hex = '6';
        break;
      case (7):
        hex = '7';
        break;
      case (8):
        hex = '8';
        break;
      case (9):
        hex = '9';
        break;
      case (10):
        hex = 'A';
        break;
      case (11):
        hex = 'B';
        break;
      case (12):
        hex = 'C';
        break;
      case (13):
        hex = 'D';
        break;
      case (14):
        hex = 'E';
        break;
      case (15):
        hex = 'F';
        break;
    }

    return hex;
  }
}
