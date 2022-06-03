import 'dart:math';

import 'package:practical_work_6_5/practical_work_6_5.dart'
    as practical_work_6_5;

void main(List<String> arguments) {
  List<visitors> visitor = [];

  visitor.add(new visitors('Лихачев', 'Алексей', 'Владимирович',
      'Совоченко 1111', '3725125212741631', '50937070900000005243'));
  visitor.add(new visitors('Мирошниченко', 'Константин', 'Владимирович',
      'Воронова 13', '1621373463217870', '50256622500000001626'));
  visitor.add(new visitors('Норменко', 'Человек', 'Мужчинович', 'Обычненко 777',
      '9999125652137423', '40582593300000008043'));

  for (int i = 0; i < visitor.length; i++) {
    for (int j = 0; j < visitor.length - 1; j++) {
      if (visitor[j].getLName().codeUnitAt(0) >
          visitor[j + 1].getLName().codeUnitAt(0)) {
        String b = visitor[j].getLName(); // создали дополнительную переменную
        visitor[j] = visitor[j + 1]; // меняем местами
        visitor[j + 1].giveLName(b); // значения элементов
      }
    }
  }

  print('Все поситители в алфавитном порядке //');
  for (int i = 0; i < visitor.length; i++) {
    visitor[i].ShowInfo();
  }

  print('');
  print(
      'Все поситители, у которых номер кредитной карточки находится в диапазоне [0; 5113000000000000] //');
  for (int i = 0; i < visitor.length; i++) {
    if (visitor[i].getCard() < 5113000000000000) {
      visitor[i].ShowInfo();
    }
  }
}

class visitors {
  String _lName = '-';
  String _fName = '-';
  String _patr = '-';

  String _adress = '-';
  String _creditCard = '-';
  String _bankNum = '-';

  visitors(String lName, String fName, String patr, String adress,
      String creditCard, String bankNum) {
    _lName = lName;
    _fName = fName;
    _patr = patr;
    _adress = adress;
    _creditCard = creditCard;
    _bankNum = bankNum;
  }

  void setInfo(String lName, String fName, String patr, String adress,
      String creditCard, String bankNum) {
    _lName = lName;
    _fName = fName;
    _patr = patr;
    _adress = adress;
    _creditCard = creditCard;
    _bankNum = bankNum;
  }

  List<String> getInfo() {
    List<String> data = [
      _lName,
      _fName,
      _patr,
      _adress,
      _creditCard,
      _bankNum,
    ];
    return data;
  }

  String getLName() {
    return _lName;
  }

  void ShowInfo() {
    print(
        'Фамилия: $_lName, Имя: $_fName, Отчество: $_patr, Адрес: $_adress | $_creditCard | $_bankNum');
  }

  void giveLName(String lName) {
    _lName = lName;
  }

  int getCard() {
    return (int.parse(_creditCard));
  }
}
