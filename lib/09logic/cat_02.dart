class Cat02 {
  // создание приватных полей
  String _name = '';
  int _age = 0;
  String _color = '';

  // консруктор
  Cat02(String name, int age, String color) {
    this._name = name;
    this._age = age;
    this._color = color;
  }

  // именованые конструкторы
  Cat02.noParams(){}

  Cat02.name(String name){
    this._name = name;
  }

  Cat02.age(int age){
    this._age = age;
  }

  // Свойства
  // тип get ИМЯ(){} - шаблон свойства на чтение данных
  // void set ИМЯ(Тип новое_значение){} - шаблон на изменение
  // можно задать одинаковое имя для гетера и сетера

  int get age {
    return _age;
  }

  set age(int age) {
    if (age - _age == 1) {
      _age = age;
    }
  }

  String show() {
    return 'Name: $_name Age:$_age Color: $_color';
  }

  void sound({required String word, required count}) {
    print('Котик $_name сказал');
    for (int i = 0; i < count; i++) {
      print(word);
    }
  }

  //перегрузка операторов
  // < > <= >= == + - * / ~/ % | & ^ << >>
  // общая структура перегрузки операторов
  // возвращаемый_тип operator оператор(параметр) {}
  bool operator >  (Cat02 obj) {
    // this - это доступ к полям объекта для которого происходит сравнение (объект слева от оператора при вызове
    // obj - доступ к полям объекта с которым сравниваем объект справа от оператора при вызове
    return this._age > obj._age;
  }

  void catMain() {
    // создание объека класса
    //Имя_класса имя = Имя_класса();
    Cat02 cat = Cat02('Кузя', 5, 'Черный');
    //print('объект класса Cat: name = ${cat.name}, age = ${cat.age}, color = ${cat.color}');

    print(cat.show());

    cat.sound(word: 'мяу', count: 6);

    //пример инкапсуляции когда реальные переменные скрыты и модифицируются через методы
    int ageMyCat = cat.age;
    cat.age = 9;
    ageMyCat = cat.age;
    print(ageMyCat.toString());

    Cat02 cat2 = Cat02('Масик', 5, 'белый');

    if (cat2 > cat) {
      print ('cat2 > cat');
    } else {
      print ('cat > cat2');
    }

  }

}

class TestNumber {
  int a;
  int b;
  int c;
  TestNumber(this.a, this.b, this.c);

  //переопределение +
  TestNumber operator + (TestNumber obj){
    return TestNumber(this.a + obj.a, this.b + obj.b, this.c + obj.c);
}

  String show() {
    return "a = $a b = $b c = $c";
  }
}

void testMain () {
  TestNumber test1 = TestNumber(3, 2, 5);
  TestNumber test2 = TestNumber(4, 3, 1);
  print('test1: ${test1.show()}');
  print('test2: ${test2.show()}');

  TestNumber test3 = test1 + test2;
  print('test3: ${test3.show()} hash= ${test3.hashCode}');

  test3 += test1; //но в данном случае test3 пересоздаётся в памяти
  print('test3: ${test3.show()} hash= ${test3.hashCode}');
}



