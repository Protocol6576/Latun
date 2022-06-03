import 'package:practical_work_6_2/practical_work_6_2.dart'
    as practical_work_6_2;

void main(List<String> arguments) {
  figCalulate figures = new figCalulate([7, 5, 11, 3]);
  print('Наибольшая площадить среди фигур: ${figures.calculate()}');
}

class figCalulate {
  List<int> _figures = [0, 0, 0, 0];

  figCalulate(List<int> figures) {
    for (int i = 0; i < figures.length; i++) _figures[i] = figures[i];
  }

  int calculate() {
    int largeFigure = 0;
    for (int i = 0; i < _figures.length; i++) {
      if (_figures[i] > largeFigure) {
        largeFigure = _figures[i];
      }
    }

    return largeFigure;
  }
}
