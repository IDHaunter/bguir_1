import 'package:bguir_1/10generics/my_id.dart';
import 'package:bguir_1/10generics/person.dart';

void genericsMain() {
  //общая схема создания объекта на базе обобщённого класса
  //имя_класса<ТИП> имя_объекта = Имя_класса<ТИП>()

  Person<int> person = Person<int>(3,'Иванов', 5);
  print(person);
  Person<String> person2 = Person<String>('Злой','Иванов', 5);
  print(person2);
  print('');

  MyID myID = MyID(4, 6, 2010, 'something');
  Person<MyID> person3 = Person(myID, 'Сидоров', 6);

  print(person3);
  Person<MyID> person4 = Person(MyID(17,11,1999,'turbo'), 'Печкин', 11);
  print(person4);
}