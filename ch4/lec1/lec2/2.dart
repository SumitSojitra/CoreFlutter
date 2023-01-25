import 'dart:io';

void main() {
  stdout.write("Enter number of Element : ");
  int n = int.parse(stdin.readLineSync()!);

  List<Set> l = List.generate(n, (index) => {});
  l.forEach((element) {
    stdout.write("Enter element : ");
    String? n = stdin.readLineSync();
  });

  print(l);
}