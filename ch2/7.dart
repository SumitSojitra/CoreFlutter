import 'dart:io';

void main() {
  print("Enter first name :");
  String? name  = stdin.readLineSync();
  
  print("Enter last name  :");
  String? name2  = stdin.readLineSync();

  print("$name $name2");
}