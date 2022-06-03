void main(List<String> arguments) {
  var str = "abc abc LiFe iS paIn EverYthing Is laZinEsS";
  List<int> list=[];
  str=str.toLowerCase();
  int n=0;
  for(int i = 0; i<str.length; i++){
    int s = 0;
    while (str[i]!=' '){
      int q = str[i].codeUnitAt(0)-96; 
      s+=q;
      i++;
      if(i>=str.length)
        break;
    }
    n++;
    s*=n;
    list.add(s);
  }
  print(list);
}
