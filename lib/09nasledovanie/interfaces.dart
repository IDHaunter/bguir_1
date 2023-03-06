
import 'package:bguir_1/09nasledovanie/number.dart';
import 'package:bguir_1/09nasledovanie/perfect.dart';

import 'even.dart';

void iMain() {

  //Создадим объект класса натуральное число
  Number number = Number(3);

  print(number);
  number.nextNumber();
  print(number);

  Even even = Even(5);
  print(even);
  even.nextNumber();
  print(even);

  Perfect perfect = Perfect(3);
  print(perfect);

}