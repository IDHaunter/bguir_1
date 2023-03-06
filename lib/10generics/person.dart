//общая схема создания класса с обобщениями (generics)
// class имя_класса <T>{}
class Person<T>{
  T id; //идентификатор пользователя, тип указывается при создании объекта
  String name;
  int staj;

  //Person(this.id, this.name, this.staj); //сокращённый конструктор без проверок
  Person(this.id, this.name, this.staj) {
    if (staj < 0 ) {
      staj = 0;
    }
  }

  @override
  String toString() {
    return 'Person{id: $id, name: $name, staj: $staj}';
  }
}