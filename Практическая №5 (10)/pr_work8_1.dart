void main(List<String> arguments) {
  Garaj garaj = Garaj("id",1,"One");
}
class Garaj<T> {
  T id;
  dynamic? t1;
  dynamic? t2;
  Garaj(this.id,[this.t1, this.t2]);
}
