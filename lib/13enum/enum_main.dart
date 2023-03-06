//Перечисления enum имя_перечисления{констранта1, константа2 ...}
enum Operation {
  add,
  subtract,
  multiply
}

void enumMain() {
  print(Operation.values);
  print(Operation.add);
  print(Operation.add.index);

  //создание объект перечисления
  Operation op = Operation.multiply;
  print(op);

}