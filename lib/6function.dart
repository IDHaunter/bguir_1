import 'dart:io';

//функции
//общий вид
//тип_результата имя_функции (тип1 парам1, тип2 парам2, ...) { код }
//функция с типом должна возвращать return

//даны два целых числа, нужно найти наибольшее среди них
int maxAB(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}

void func0() {
  stdout.write('Задайте натуральное число a: ');
  int a = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  stdout.write('Задайте натуральное число b: ');
  int b = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  int max = alg(a, b);

  print('max $max');

}

//даны два натуральные числа, нужна функция поиска набольшего общего делителя этих чисел
//используя алгоритм Евклида
int alg(int a, int b) {
  while (a != 0 && b!=0) {
    if (a > b) {
      a = a % b;
    }
    else {
      b = b % a;
    }
  }
  return (a + b);
}

//Классическое объявление обязательных параметров
int aBRequired(int a, int b) {
  return (a + b);
}
//необязательные параметры берутся в []
int aBNotRequired([int a=0, int b=0]) {
  return (a + b);
}
//комбинация обязательных и необязательных (Не обязательные всегда в конце!!!)
int aBCombo(int a, [int b=0]) {
  return (a + b);
}
//именованные не обязательные параметры
int aBNotRequiredNamed({int a=0, int b=0}) {
  return (a + b);
}
//именованные обязательные
int aBRequiredNamed({required int a, required int b}) {
  return (a + b);
}
//комбинированное объявление именованных
int aBNamedCombo({int a=0, required int b, double d=0.123}) {
  return (a + b);
}
//ну и немного бредовый вариант
int aBNamedUnNamedComboNamed(int z, {int a=0, required int b, double d=0.123}) {
  return (a + b + z + d.truncate());
}

void tryFunc()
{
  late int c;
  c = aBRequired(1,2);
  c = aBNotRequired();
  c = aBNotRequiredNamed(a: 1);
  c = aBRequiredNamed(a: 1, b: 2);
  c = aBNamedCombo(b: 2);
  c = aBNamedUnNamedComboNamed(11,b: 2);
}

// Функция в которую можно передать функцию
void tryFunc2(int Function(int,int) f, int a, int b)
{
  late int c;
  //переменная для хранения функции
  int Function(int,int) myFunc;
  myFunc = f;

  c = f(a,b) + f(10,10) + myFunc(5,5);
  print(c);
}

//-------------------- день 2

void date(String day, [int month =1, int year = 2023]) {
 print('дата: $day - $month - $year');
}

void date2({int day=1, int month =1, int year = 2023}) {
  print('дата: $day - $month - $year');
}

//Даны два натуральных числа. Необходимо проветить являются ли они взаимнопростыми
int nod(int a, int b) {
 while (b>0) {
   int r = a% b;
   a=b;
   b=r;
 }
 return a;
}

void vzProst(int a, int b) {
  if (nod(a,b)==1) {
    print('Числа $a и $b взаимнопростые');
  }
}
