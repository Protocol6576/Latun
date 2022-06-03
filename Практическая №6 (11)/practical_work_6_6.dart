import 'package:practical_work_6_6/practical_work_6_6.dart'
    as practical_work_6_6;
import 'dart:math';

void main(List<String> arguments) {
  List<abonents> abonent = [];

  abonent.add(new abonents('Лихачев', 'Алексей', 'Владимирович',
      'Совоченко 1111', 1326261, 126621, 3.31));
  abonent.add(new abonents('Мирошниченко', 'Константин', 'Владимирович',
      'Воронова 13', 126721, 1267621, 0));
  abonent.add(new abonents('Норменко', 'Человек', 'Мужчинович', 'Обычненко 777',
      2162162162, 5211, 7));

  for (int i = 0; i < abonent.length; i++) {
    for (int j = 0; j < abonent.length - 1; j++) {
      if (abonent[j].getLName().codeUnitAt(0) >
          abonent[j + 1].getLName().codeUnitAt(0)) {
        String b = abonent[j].getLName(); // создали дополнительную переменную
        abonent[j] = abonent[j + 1]; // меняем местами
        abonent[j + 1].giveLName(b); // значения элементов
      }
    }
  }

  print('Все абоненты в алфавитном порядке //');
  for (int i = 0; i < abonent.length; i++) {
    abonent[i].ShowInfo();
  }

  print('');
  print('Все абоненты, у которых время переговорок превышает 5 минут //');
  for (int i = 0; i < abonent.length; i++) {
    if (abonent[i].getTime() > 5) {
      abonent[i].ShowInfo();
    }
  }

  print('');
  print('Все абоненты, которые пользовались междугородной связью //');
  for (int i = 0; i < abonent.length; i++) {
    if (abonent[i].getTime() != 0) {
      abonent[i].ShowInfo();
    }
  }
}

class abonents {
  String _lName = '-';
  String _fName = '-';
  String _patr = '-';

  String _adress = '-';
  double _debet = 0;
  double _credit = 0;
  double _callTime = 0;

  abonents(String lName, String fName, String patr, String adress, double debet,
      double credit, double callTime) {
    _lName = lName;
    _fName = fName;
    _patr = patr;
    _adress = adress;
    _debet = debet;
    _credit = credit;
    _callTime = callTime;
  }

  void setInfo(String lName, String fName, String patr, String adress,
      double debet, double credit, double callTime) {
    _lName = lName;
    _fName = fName;
    _patr = patr;
    _adress = adress;
    _debet = debet;
    _credit = credit;
    _callTime = callTime;
  }

  String getLName() {
    return _lName;
  }

  void ShowInfo() {
    print(
        'Фамилия: $_lName, Имя: $_fName, Отчество: $_patr, Адрес: $_adress <[| $_debet | $_credit |]> Время на звонки: $_callTimeмин.');
  }

  void giveLName(String lName) {
    _lName = lName;
  }

  double getTime() {
    return (_callTime);
  }
}
