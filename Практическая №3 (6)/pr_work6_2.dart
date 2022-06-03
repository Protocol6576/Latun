void main(List<String> arguments) {
  double PI = 3, sign = -1;
  for (double i = 1; i <= 20; i++) {
    sign = sign * -1;
    PI += sign * (4 / ((i * 2) * (i * 2 + 1) * (i * 2 + 2)));
  }
  print(PI.toStringAsFixed(8));
}
