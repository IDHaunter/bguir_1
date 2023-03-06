import 'package:bguir_1/nasledovanie/geometry/figure.dart';

class Square extends Figure {
  double sideA = 1;

  //Конструктор по умолчанию не наследуется, нужно явно прописывать за исключением
  // случаев когда конструктор по умолчанию не имеет параметров
  Square(String name, double sideA) : super(name) {
    if (sideA > 0) {
      this.sideA = sideA;
    }
  }

  //Вызов именного конструктора
  Square.zeroPar() : super.zeroPar();

  // методы
  void test() {
    print('Класс Квадрат: P= ${this.p()}');
    print('Класс Квадрат: P (родительский метод)= ${super.p()}');
  }

  //Переопределение методов
  //если не написать @override то работать будет, но медленнее
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

//------------------------------------------------------------------------------
class Rectangle extends Square {
  double sideB = 1;
  static int count = 0; //счётчик созданных классов

  Rectangle(String name, double sideA, double sideB)
      : super('Прямоугольник', sideA) {
    count++;
    if (sideB > 0) {
      this.sideB = sideB;
    }
  }

  Rectangle.zeroPar() : super.zeroPar();

  // методы
  @override
  void test() {
    print('Класс Прямоугольник: P= ${p()}');
    print('Класс Прямоугольник: P (родительский метод)= ${super.p()}');
  }

  //статические методы
  static void information() {
    print("""Объект класса прямоугольник унаследован от класса квадрат и фигура
          для создания объекта необходимо задать поля: 
          имя объекта (строка), 
          две стороны (дробные числа)
          """);
  }

  @override
  double p() {
    return 2 * sideA + 2 * sideB;
  }

  @override
  double s() {
    return sideA * sideB;
  }

  //Переопределяем toString при этом используем частично родительское переопределение super.toString
  @override
  String toString() {
    return super.toString() + " Сторона B: " + sideB.toString();
  }

}
