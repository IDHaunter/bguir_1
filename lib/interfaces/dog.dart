import 'package:bguir_1/interfaces/security.dart';

import 'animal.dart';

class Dog implements Animal, Security {
  @override
  int age=1;

  @override
  String color='';

  @override
  int force=1;

  @override
  String name='';

  Dog.zeroPar();
  Dog(this.color, int age, this.name, int force){
    if (age>0) {
      this.age=age;
    }
    if (force>0) {
      this.force=force;
    }

  }

  @override
  void food() {
    print('Собака $name поела!');
  }

  @override
  void serve() {
    print('Собака $name охраняет объект');
  }

  @override
  void sleep() {
    print('Собака $name спит');
  }

  @override
  void take() {
    print('Собака $name остановила нарушителя!');
  }

  @override
  String toString() {
    return 'Dog{age: $age, color: $color, force: $force, name: $name}';
  }
}