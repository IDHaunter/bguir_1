class Figure {
  String name=''; //инициализируем т.к. используем конструктор без параметров
  static int count = 0; //счётчик созданных классов на базе статической переменой

  Figure.zeroPar(){count++;}
  Figure(this.name){count++;}

  //метод вычисления периметра
  double p() {
    return 0.0;
  }

  //метод вычисления площади
  double s() {
    return 0.0;
  }

  String show(){
    return 'Figure $name p = ${p().toString()} s = ${s().toString()}';
  }

  @override
  String toString() {
    return 'Имя объекта - ' + this.name;
  }

}