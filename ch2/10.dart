import 'dart:io';

void main() {
    print("Enter any number : ");
    int? number = int.parse(stdin.readLineSync()!);

    if(number%2==0) {
      print("Number is Even...");
    }
    else {
      print("Number is odd...");
    }
}