import 'dart:io';

import 'package:bguir_1/nasledovanie/geometry/figure.dart';
import 'package:bguir_1/nasledovanie/geometry/square.dart';

void nMain() {
  //К статическим полям классов обращаемся по имени общего класса, а не к конкретному экземпляру
  print('Всего созданно объектов на базе класса Фигура: ${Figure.count}');

  Figure figure = Figure('Фигура');
  print('Фигура 1: ${figure.show()}');

  Square square = Square('Квадрат',4);
  print('Квадрат 1: ${square.show()}');

  square.test();
  print('Всего созданно объектов на базе класса Фигура: ${Figure.count}');

  print('Вызываем метод toString для квадрата: ${square.toString()}');
  print(square); //неявный вызов toString

  //Square square2 = Square.zeroPar();
  //print('Квадрат 2: ${square2.show()}');
  Rectangle rectangle = Rectangle('Квадрат',2,2);
  print('Всего созданно объектов на базе класса Прямоугольник: ${Rectangle.count}');
  Rectangle.information();

}

