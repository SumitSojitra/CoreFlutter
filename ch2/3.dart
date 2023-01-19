import 'dart:io';

void main() {
    
    print("Enter Value of a : ");
    int? a = int.parse(stdin.readLineSync()!);
    print("ENter value of b : ");
    int? b = int.parse(stdin.readLineSync()!);

    print("A : $a");
    print("B : $b");
    print("Multiplication : ${a*b}");
}