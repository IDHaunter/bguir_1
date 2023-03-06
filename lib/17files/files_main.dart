import 'dart:convert';
import 'dart:io';

//Общая схема создания связи между файлом и файловой переменной
// File имя_файловой_переменнной = File('имя файла с расширеннием');

void filesMain() {
  File myFile = File('test.txt');
  myFile.writeAsStringSync('Hello world!', mode: FileMode.append);
  String str = myFile.readAsStringSync();
  print(str);

  //дополнительные параметры метода writeAsStringSync
  /*
  contents - обязательный параметр, содержит что необходимо записать в файл

  необязательные:
  mode - режим работы с файлом (элемент класса FileMode) - По умолчанию режим перезаписи файла
    FileMode.append - для чтения и записи файла в конец. Файл создаётся если не существует;
    FileMode.read - только для чтения
    FileMode.write - для чтения и перезаписи файла
    FileMode.writeOnly - только для записи
    FileMode.writeOnlyAppend - только для записи в конец файла
  encoding - кодировка, по умолчанию utf8
  flush - значение по умолчанию false (если true - запись в файл всех буферизированных данных)
   */

  // проверка на существование файла
  print('Создан ли файл test.txt: ${myFile.existsSync()}');
  // просмотр метаданных А если указать каталог которого не существует, dart сам создаст каталог?
  print(myFile.statSync());
  // удаление файла
  myFile.deleteSync();

}