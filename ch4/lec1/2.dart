import 'dart:io';

void main() {

  stdout.write("Enter number of state : ");
  int n = int.parse(stdin.readLineSync()!);  

  List l = List.generate(n, (index) => null);
  l.forEach((e) {

  int i = l.indexOf(e);
    stdout.write("Enter State ${i + 1} : ");
    l[i] = stdin.readLineSync()!;
  });
  
  print(l);
}