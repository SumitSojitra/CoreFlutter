import 'dart:io';

void main() {

  stdout.write("Enter number length : ");
  int n = int.parse(stdin.readLineSync()!);

  for(int i=0; i<n; i++){
    stdout.write("Enter number : ");
    int num = int.parse(stdin.readLineSync()!);
  }

  List l = List.generate(n, (i) =>("${i+1} Hello"));

  print(l);
} 