void main(List<String> arguments) {
  var set = {1,2,3,4,5,6,7,8,9,-1,-2,-3,-4,-5,-6,-7,-8,-9};
  int sum=0;
  for (var i in set)
    if(i>0)
      sum+=i;
  print(sum);
}