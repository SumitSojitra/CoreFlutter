import 'dart:io';

void main() {
    print("Enter first table number : ");
    int? first = int.parse(stdin.readLineSync()!);
    
    print("Enter last table number  : ");
    int? last = int.parse(stdin.readLineSync()!);

    for(int i=first; i<=last; i++){
      for(int j=first; j<=10; j++) {
        print("$i X $j = ${i*j}");
      }
    }
}