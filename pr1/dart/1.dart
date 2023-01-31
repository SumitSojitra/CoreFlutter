import 'dart:io';

void main() {
  List l = [2,-2,1,-3,4];

  l.forEach((element) {
      if(element<0){
        print("$element ");
      }
  });
}