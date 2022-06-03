import 'dart:math';
void main(List<String> arguments) {
  var rnd = Random();
  var list = [];
  for (var i = 1; i <= 10; i++) {
    list.add((rnd.nextInt(20) * 2 + 1) * 7);
  }
  print(list);
}
