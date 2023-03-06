
void listMain() {
//Список нефиксированной размерности
//List<тип> = <тип>[]

/* List<int> myList = <int>[];
print(myList);

List<int> myList2 = [1,5,3,2];
print(myList2);

//Сисок фиксированной размерности
//List<тип> имя_списка = List.filled(количество_элементов, значение_для_элементов)
List<int> myList4 = List.filled(4, 0);
print(myList4);

// Основные свойства списка языка Дарт
/* first - возвращает первый элемент списка
 last - Последний элемент списка
 length - возвращает длину списка
 reversed - возвращает новый список с элементами записанными в обратном порядке
 isEmpty - true если
*/

print('Первый элемент списка MyList2: ${myList2.first}');
print('Последний элемент списка MyList2: ${myList2.last}');
print('Длина списка MyList2: ${myList2.length}');
print('Перевёрнутый MyList2: ${myList2.reversed}');
print('Перевёрнутый MyList2: ${myList2.isEmpty}');
*/

/* Основные методы списков
 add(элемент) - добавляет в конец списка новый элемент
 addAll(элемент) - добавляет в конец списка новый список
 insert(позиция, элемент) - добавляет новый элемент в указанную позицию, список сдвигается вправо освобождая ячейку
 clear() - удаляет все элементы из списка
 indexOf(элемент) - возвращает индекс первого встречного элемента сначала списка. Есть возможность в виде необязательного параметра передать позицию начала поиска start
 lastIndexOf(элемент) - возвращает индекс первого встречного элемента с конца списка
 remove(элемент) - удаляет из списка первый встречный элемент с таким значением
 removeLast(элемент) - удаляет последний элемент из списка
 removeRange(start позиция, end позиция) - удаляет позиции от ... до
 removeAt(позиция) - удаляет элемент из указанной позиции
 sort - сортирует именно текущий список не возвращая новый
 sublist(start,[end]) - возвращает часть списка с позиции start до позиции end (или до конца)
 skip(count) - возвращает список в котором отсутствуют первые count элементов
 take(count) - возвращает список в которм содержится только первые count элементов
 contains(элемент) - возвращает true если в списке присутствует указанный элемент
 join([String separator = '']) - объединяет элементы списка в строку разделённые separator
 where((element) => false) - возвращает список элементы которого соответствуют условию, т.е. просит указать анонимную функцию
*/

  List<int> list = <int>[2,5,6,7];
  List<int> listFixed = List.filled(5, 0);

  print('''  -----------
  нефиксированной длины: $list
  фиксированной длины $listFixed ''');

  list[0] = 34;
  listFixed[0] = 5;
  list.add(67);
  list=list + [67];
  list=[...list, 67];

  /*
  var a = [0,1,2,3,4];
  var b = [6,7,8,9];
  var c = [...a,5,...b];
   */

  list.insert(0, 89);
  //listFixed.add(67) - будет ошибка т.к. список фиксированный

  print('''  -----------
  нефиксированной длины: $list
  фиксированной длины $listFixed ''');

  //Iterable<int> newList = list.where((e) => (e%2==0));
  /*Iterable<int> newList = list.where(sumDigitOdd);
  List<int> convertList = newList.toList();
  List<int> convertList2 = List.from(newList);
  print(newList.toList());
  convertList.sort();
  print(convertList);

  for (int i=0; i< convertList.length; i++) {
    print(convertList[i]);
  }

  for (int item in convertList) {
    print(item);
  }

  convertList.forEach((element)=> print(element));
*/
  List<Car> myList = List.filled(5, Car('lada', 160, 10000), growable: true);
  print('Длина списка: ${myList.length}');

  List<Car> listCar = [];
  listCar.add(Car('lada', 160, 10000));
  listCar.add(Car('uaz', 140, 12000));
  listCar.add(Car('maz', 130, 32000));

  List<Object> dList = ['String', 0 , Car('lada', 160, 10000)];
  dList.forEach((element) {
    print(element.runtimeType);
    if (element is Car) {
      print('Это машина, её hash = ${element.hashCode}');
    }
  });

}

// функция возвращает true если сумма цифр числа, нечётное
bool sumDigitOdd(int n) {
  int sum=0;
  while(n>0){
    sum += n % 10;
    n~/=10;
  }
  return sum% 2 == 1;
}

class Car {
  String marka;
  int speed;
  double price;
  Car(this.marka, this.speed, this.price);

  @override
  String toString() {
    return 'Car{marka: $marka, speed: $speed, price: $price}';
  }
}
