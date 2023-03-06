import 'dart:io';

void isk0() {
  stdout.write('Задайте натуральное число a: ');
  int a = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  stdout.write('Задайте натуральное число b: ');
  int b = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  try {
    int div2 = a ~/ b;
    print('$a ~/ $b = $div2');
  } catch (e) {
    print('Ошибка: $e');
  } finally {
    print('блок finally');
  }
}

void isk1() {
  try {
    stdout.write('Задайте натуральное число a: ');
    int a = int.parse(stdin.readLineSync() ?? '0');

    stdout.write('Задайте натуральное число b: ');
    int b = int.parse(stdin.readLineSync() ?? '0');

    int div2 = a ~/ b;
    print('$a ~/ $b = $div2');
  } on FormatException {
    print('Ошибка формата преобразования в целое число');
  }
  catch (e) {
    print('Ошибка: $e');
  } finally {
    print('блок finally');
  }
}

//Раздельный отлов исключений
void isk2() {
  try {
    stdout.write('Задайте натуральное число a: ');
    int a = int.parse(stdin.readLineSync() ?? '0');

    stdout.write('Задайте натуральное число b: ');
    int b = int.parse(stdin.readLineSync() ?? '0');

    int div2 = a ~/ b;
    print('$a ~/ $b = $div2');
  } on   FormatException catch (exp) {
    print('Ошибка формата преобразования в целое число');
    print('Исключение!!! $exp');
  }
  catch (e) {
    print('Ошибка: $e');
  } finally {
    print('блок finally');
  }
}

// В дарте  double res = a/0 - не будет ошибки, будет infinity

/* Виды исключений
 FormatException
 IntegerDivisionByZeroException
 IOException
 FileSystemException
 HttpException
 ProcessException
 SignalException
 StdoutException
 StdinException
 SocketException
 IsolateSpawnException
 TimeoutException
 */