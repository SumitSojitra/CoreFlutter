import 'dart:io';
void main()
{
  List l = [1,2,32,4,5];
  int max = 0;

  for(int i=0; i<5; i++)
  {
    if(l[i]>max)
    {
      max = l[i];
    }
  }

  print("Largest Number is : $max");
}