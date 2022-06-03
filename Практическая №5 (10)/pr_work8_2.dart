import 'dart:math';

void main(List<String> arguments) {
  Yravneiya yravneiya = Yravneiya(1,2,-3);
  yravneiya.Calck();
  print(yravneiya.x1);
  print(yravneiya.x2);
}
class Yravneiya{
  double a,b,c,d=0;
  double? x1,x2;
  Yravneiya(this.a,this.b,this.c);
  void Calck(){
    d = pow(b, 2) - 4*a*c;
    x1=(-b-pow(d, 1/2))/(2*a);
    x2=(-b+pow(d, 1/2))/(2*a);
  }
}
