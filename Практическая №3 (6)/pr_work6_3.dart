void main(List<String> arguments) {
  var set = {"Электрофотополупроводниковый", "водогрязеторфопарафинолечение", "Тетрагидропиранилциклопентилтетрагидропиридопиридиновые", "Гидразинокарбонилметилбромфенилдигидробенздиазепин", "Кокамидопропилпропиленгликольдимонийхлоридфосфат", "восьмидесятивосьмимиллиметровое", "метоксихлордиэтиламинометилбутиламиноакридин", "фиброэзофагогастродуоденоскопия", "автоэлектростеклоподъемники", "благоденствующий", "гиппопотомомонстросесквиппедалиофобия", "бумагопрядильный"};
  var map = <String, String>{};
  for (var str in set)
    map[str] = GetCharNum(str);
  for(var item in map.entries)
    print("${item.key} - ${item.value}");
}
String GetCharNum(String str) {
  var map = <String, int>{};
  str=str.toLowerCase();
  for(int i = 0; i<str.length; i++){
    if(map.containsKey(str[i])==false){
      int k=0;
      for(int j=i;j<str.length;j++)
        if (str[i]==str[j])
          k++;
      map[str[i]]=k;
    }
  }
  var res="";
  for(var item in map.entries)
    res+="${item.key}${item.value}";
  return res;
}