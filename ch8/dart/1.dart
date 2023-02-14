import 'dart:io';

void display({List? n}) => print(n);

void delete({dynamic val,required List l}) =>  l.remove(val);

void insert({required int pos,required List l,required int val}) => l.insert(pos, val);

void update({required int start,required int end,dynamic replace,required List l }) => l.replaceRange(start,end,replace);

void main() {


  stdout.write("Enter lenth of List : ");
  int? n  = int.parse(stdin.readLineSync()!);

  List<dynamic> l = List.generate(n, (index) => (index+1));

 
  print("Enter 1 for Insert..");
  print("Enter 2 for Update..");
  print("Enter 3 for Delete..");

  stdout.write("Enter your choice : ");
  int? choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      stdout.write("Enter position : ");
      int? pos = int.parse(stdin.readLineSync()!);
      
      stdout.write("Enter value : ");
      int? val = int.parse(stdin.readLineSync()!);

      insert(pos: pos, l:l,val:val);
      
  display(n: l);
      break;
    case 2:
      stdout.write("Enter start position : ");
      int? start = int.parse(stdin.readLineSync()!);
      
      stdout.write("Enter end position   : ");
      int? end = int.parse(stdin.readLineSync()!);
      
      stdout.write("Enter value : ");
      dynamic? replace = int.parse(stdin.readLineSync()!);
      
      

      update(start:start, end:end,replace:replace,l:l);
      
  display(n: l);
      break;
      case 3 : 
         stdout.write("Enter delete value : ");
      dynamic? val = int.parse(stdin.readLineSync()!);

   delete(val:val, l:l);
  display(n: l);
      break;
    default:
  }
}