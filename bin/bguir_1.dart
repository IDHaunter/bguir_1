//подключение ввода данных с клавиатуры
import 'dart:io';

import 'package:bguir_1/14list/list_main.dart';
import 'package:bguir_1/15set/set_main.dart';
import 'package:bguir_1/16map/map_main.dart';
import 'package:bguir_1/17files/files_main.dart';
import 'package:bguir_1/18json/json_main.dart';
import 'package:bguir_1/19json_serialization/json_serialization_main.dart';
import 'package:bguir_1/20async_await/async_await_main.dart';
import 'package:bguir_1/2uslovie.dart';
import 'package:bguir_1/3for.dart';
import 'package:bguir_1/4while.dart';
import 'package:bguir_1/5dowhile.dart';
import 'package:bguir_1/6function.dart';
import 'package:bguir_1/7recursion.dart';
import 'package:bguir_1/8iskluchenie.dart';
import 'package:bguir_1/9oop.dart';
import 'package:bguir_1/13enum/enum_main.dart';
import 'package:bguir_1/12fabric/fabric_main.dart';
import 'package:bguir_1/10generics/generics_main.dart';
import 'package:bguir_1/11generics2/generics2_main.dart';
import 'package:bguir_1/09interfaces/interfaces_main.dart';

import 'package:bguir_1/09logic/cat_02.dart';
import 'package:bguir_1/09nasledovanie/abstracts.dart';
import 'package:bguir_1/09nasledovanie/interfaces.dart';
import 'package:bguir_1/09nasledovanie/nasledovanie.dart';
import 'package:bguir_1/09nasledovanie2/nasledovanie2_main.dart';

void main(List<String> arguments) {
  // моя не первая программа
  /*
  print('Hello world!');
  print('Привет мир!');

  // целое число Int
  // дробное число double

  // объявление переменной
  // тип имя_переменной
  int a = 5;
  double b = 7.5;
  print('a = $a b= $b');

  //дарт авттоматически определяет тип данных по значению
  // !!! после динамического определения типа тип переменной менять нельзя
  var x = 56;

  // ключевое слово dynamic динамически определяет тип данных по значению
  // и позволяет поменять тип данных
  dynamic y = 3;
  print('y = $y (int)');
  y = 'GGG';
  print('y = $y (string)');
  */

  //арифметические операторы ---------------------------------------------------
  /*
  + сложение
  - вычитание
  * умножение
  / дробное деление
  % отстаток от деления (деление по модулю) - Результат
  ~/ целочисленное деление
   */

  //чтение данных с клавиатуры stdin.readLineSync (данные поступят в виде строки)
  /*
  print('Введите целое число "a"');

  int a = int.parse(stdin.readLineSync() ?? '0');
  print('Введите целое число "b"');
  int b = int.parse(stdin.readLineSync() ?? '0');
  int summ = a + b;
  print('$a + $b = $summ');

  int razn = a - b;
  print('$a - $b = $razn');

  int multi = a*b;
  print('$a * $b = $multi');

  double divide = a/b;
  print('$a / $b =$divide');

  int divide2 = a ~/ b;
  print('$a ~/ $b = $divide2');

  int divide3 = a % b;
  print('$a % $b = $divide3');
  print('ответ: ${a+b}');
*/
  //uslovie();
  //for10();
  //while3();
  //doWhile0();

  //func0();

  //tryFunc2(aBRequired, 1, 2);

  //rec();
  //isk1();
  //oop();

  //Cat02 cat = Cat02('Мурзик',3,'рыжий');
  //cat.catMain();

  //testMain();
  //aMain();
  //iMain();
  //interfacesMain();

  //n2Main();

  //genericsMain();
  //generics2Main();

  //fabricMain();
  //enumMain();

  //listMain();
  //setMain();

  //mapMain();
  //filesMain();
  //jsonMain();
  //jsonSerializationMain();
  asyncAwaitMain();

}
