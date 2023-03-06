import 'dart:io';

import 'package:bguir_1/09nasledovanie/geometry/figure.dart';
import 'package:bguir_1/09nasledovanie/geometry/square.dart';

abstract class AFigure {
  String name=''; //инициализируем т.к. используем конструктор без параметров
  static int count = 0; //счётчик созданных классов на базе статической переменой

  AFigure.zeroPar(){count++;}
  AFigure(this.name){count++;}

  //абстрактые методы (должны быть переопределены в классе потомке)
  double p();
  double s();

  String show(){
    return 'Figure $name p = ${p().toString()} s = ${s().toString()}';
  }

  @override
  String toString() {
    return 'Имя объекта - ' + this.name;
  }

}

//Наследник абстрактного класса обязательно должен переопределить все методы
class ASquare extends AFigure {
  double sideA = 1;

  ASquare(String name, double sideA) : super(name) {
    if (sideA > 0) {
      this.sideA = sideA;
    }
  }

  ASquare.zeroPar() : super.zeroPar();

  @override
  double p() {
    return 4 * this.sideA;
  }

  @override
  double s() {
    return sideA * sideA;
  }

  //Переопределяем toString при этом используем частично родительское переопределение super.toString
  @override
  String toString() {
    return super.toString() + " Сторона А: " + sideA.toString();
  }
}


void aMain() {
  //К статическим полям классов обращаемся по имени общего класса, а не к конкретному экземпляру
  print('Всего созданно объектов на базе класса Фигура: ${AFigure.count}');

  //На базе абстрактынх классов нельзя создавать объекты
  ASquare aSquare = ASquare('Квадрат',4);

  print('Всего созданно объектов на базе класса Фигура: ${AFigure.count}');

  print('Вызываем метод toString для квадрата: ${aSquare.toString()}');
}