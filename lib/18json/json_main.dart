import 'dart:convert';
import 'dart:io';

import 'package:bguir_1/18json/student.dart';

void jsonMain() {
  File myFile = File('student.json');
  /*
  Student student = Student(name: 'Иванов', age: 18, course: 1, single: false);

  var description = ['Мечтатель', 'Способный', 'Усидчивый'];
  student.addAllDescription(description);
  print(student);
  //создаём объект для кодирования объекта класса в JSON формат
  var encoder = JsonEncoder.withIndent(' ');
  //объект кодирования вызывает из класса Student автоматически метод возвращающий словарь (toJson)
  //т.е dart автоматически будет искать метод внутри student возвращающий Map
  myFile.writeAsStringSync(encoder.convert(student));
  //но можно указать и явно метод
  //myFile.writeAsStringSync(encoder.convert(student.toJson()));

  //чтение из JSON файла
  print(myFile.readAsStringSync());
  */

  //чтение JSON файла и создание на базе этих данных
  Student student2 = Student.fromJson(jsonDecode(myFile.readAsStringSync()));
  print(student2);
}