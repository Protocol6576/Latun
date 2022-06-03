void main(List<String> arguments) {
  Stol stol = new Stol();
  Tatelka tr = new Tatelka();
  Vilka vi = new Vilka();
  stol.AddP(tr);
  stol.Posmotret();
  stol.AddP(vi);
  stol.AddP(vi);
  stol.AddP(tr);
  stol.Posmotret();
}
class Stol{
  List<Pribor> prList= [];
  void AddP(Pribor pr){
    prList.add(pr);
  }
  void RemP(Pribor pr){
    prList.remove(pr);
  }
  void Posmotret(){
    print(prList);
  }
}
class Pribor{
  String? name;
}
class Vilka extends Pribor{
}
class Lojka extends Pribor{
}
class Krujka extends Pribor{
}
class Tatelka extends Pribor{
}
