void main()
{
  List l = [1,2,3,4,5];

  print(l);

  l.add(10); // insert
  l[2] = 20; // update
  l.remove(3); // remove elemenet
  l.removeAt(1); // remove at position

  print(l);
}