import 'dart:async';

//потоки

int add() => 10 + 15 - 4;

Future <String> getBigData(){
  return Future.delayed(const Duration(seconds: 2), () => 'Обработка очень больших объемов данных завершена');
 // return 'Обработка очень больших объемов данных';
}

Future<void> makeRequestData() async {
  print('Запрос данных');
  var data = await getBigData();
  print(data);
  print('Данные получены');
}

Future<void> asyncAwaitMain() async {
  print('AsyncAwait ---------------');

  //Future - класс для создания основной очереди событий
 /*
  Future(() {
    print('1-ый элемент в очереди событий');
    Future.microtask(() {
      print('3ий элемент в очереди микрозадач');
    });
  });
  Future(() => print('2-ый элемент в очереди событий'));

  // Future.microtask - конструктор для создания очереди микрозадач (имеет НАИВЫСШИЙ приоритет!)
  Future.microtask(() {
    print('1ый элемент в очереди микрозадач');
  });

  Future.microtask(() {
    print('2ой элемент в очереди микрозадач');
  });
  */

  //Основные API класса future
  /*
  Future(FutureOr<T>) computation() )
    - создаёт элемент очереди (Future) содержащий результат асинхронного вызова функции computation, которая возвращает результат тип Т
  Future.delayed(Duration duration, [FutureOr<T>) computation()])
    - создаёт элемент очереди (Future) выполнение которого произойдёт после задержки  duration в mc
  Future.error(Object error, [StackTrace? stackTrace])
    - создаёт элемент очереди который будет завершён ошибкой error. Ошибка запускается с отстрочкой, что даёт возможность запустить код перехвата исключения
  Future.microtask(FutureOr<T> computation() )
    - создаёт элемент очереди который помещается в очередь микрозадач
  Future.sync(FutureOr<T> computation() )
    - вызывает немедленное выполнение функции computation()
  Future.value([FutureOr<T> value]) - создаёт элемент очереди содержащий значение value типа Т
   */
/*
  print('Main до создания процессов');

  Future(() {
    print('1-ый элемент в очереди событий');
    Future.microtask(() {
      print('3ий элемент в очереди микрозадач');
    });
  });

  print('Main до создан процесс 1ый');

  Future(() => print('2-ый элемент в очереди событий'));

  print('Main до создан процесс 2ой');

  Future.sync(() => print('3-ий элемент в очереди событий c НИВЫСШИМ ПРИОРИТЕТОМ основной очереди'));

  print('Main до создан процесс 3ий');

  // Future.microtask - конструктор для создания очереди микрозадач (имеет НАИВЫСШИЙ приоритет!)
  Future.microtask(() {
    print('1ый элемент в очереди микрозадач');
  });

  print('Main Создана микрозадача 1');

  Future.microtask(() {
    print('2ой элемент в очереди микрозадач');
  });

  print('Main Создана микрозадача 2');
  print('Main пполностю завершён');

  // работа с Future хранящий и обрабатывающий данные нужного типа
  Future<int> future = Future(add);
  Future(()=>future.then((value)=> print(value + 7)));
  // для того, чтобы получить значения из элемента основной очеред необходимо воспользоваться функцией then у объекта потока-процесса
  future.then((value) => print('value=$value'));
  print('main завершён');
*/
  // ключевые слова async await
  print('Main Запуск');
  await makeRequestData();
  print('main завершён');
}
