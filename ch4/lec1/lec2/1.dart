import 'dart:io';

void main() {

 List<Map> l = List.generate(3, (index) => {});

 l.forEach((element) { 
    stdout.write("Enter Employee ID : ");
    int id = int.parse(stdin.readLineSync()!);
    
    stdout.write("Enter Employee name : ");
    String? name = stdin.readLineSync();
    
    stdout.write("Enter Employee age : ");
    int age = int.parse(stdin.readLineSync()!);
    
    stdout.write("Enter Employee Salary : ");
    int salary = int.parse(stdin.readLineSync()!);

    Map<String,dynamic> m = {
      'id':id,
      'name':name,
      'age':age,
      'salary':salary,
    };
    
      l[l.indexOf(element)].addEntries(m.entries);
 });

  print(l);

}