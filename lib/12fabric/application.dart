class Application{
  String name;
  // создадим статическое поле, которое является объектом текущего класса
  static final Application app = Application.fromName("");

  Application.fromName(this.name);

  //создаём фабричный конструктор factory
  //который должен вернуть либо новый объект либо уже существующий
  factory Application(String name) {
    if (app.name == '') {
      //app = Application.fromName(name);
      print ('Приложение $name запущено');
    }
    else {
      print('В приложении ${app.name} открыта новая вкладка');
    }
    return app; //ОБЯЗАТЕЛЬНО ВОЗВРАЩАЕТ ОБЪЕКТ КЛАССА
  }

  void information() {
    print('приложение $name');
  }

}

class SingletonOne {
  SingletonOne._privateConstructor();
  static final SingletonOne _instance = SingletonOne._privateConstructor();
  factory SingletonOne() {
    return _instance;
  }
}