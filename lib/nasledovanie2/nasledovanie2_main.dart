import '../interfaces/dog.dart';

// Миксин - это обыкновенный класс, который не содержит явной реализации конструктора
//для наследовая миксина используется слово with
/*
class Hat {
  String hatName = 'кепка';
}

class Glasses {
  String glassesName = 'тёмно голубые зеркальные очки';
}

abstract class Voice {
  void sayHello() {
  }
}

abstract class Attack {
  void hit() {
  }
}

class UnderDog extends Dog with Hat, Glasses implements Voice, Attack{
  UnderDog(super.color, super.age, super.name, super.force);

  @override
  String toString() {
    return 'UnderDog color:${super.color} + age:${super.age} + name:${super.name} + force:${super.force} + $hatName + $glassesName';
  }

  @override
  void sayHello() {
    print ('Гав-Гав');
  }

  @override
  void hit() {
    print ('РРРРР..... кусь - кусь');
  }
}

void n2Main() {
  Dog dog = Dog('белый', 3, 'Бобик', 7);
  print(dog);
  UnderDog underDog=UnderDog('чёрный', 4, 'пушок', 12);
  print(underDog);

}

 */