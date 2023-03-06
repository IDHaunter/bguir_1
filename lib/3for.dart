import 'dart:io';

//цикл с известным числом повторений
/*
for (инициализация счётчика; условие; изменение счётчика) {
действие
}
 */

void for1() {
  //Дано натуральное число n. Необходимо найти сумму первых n натуральных чисел
  print('Натуральное число "a"');
  int n = int.parse(stdin.readLineSync() ?? '0');
  int summ = 0;

  for (int i = 1; i <= n; i++) {
    summ += i; //summ = summ + i
  }
  print('сумма = $summ');
}

void for2() {
  //Дано натуральное число n. Необходимо среди первых n натуральных чисел
  // найти сумму чётных натуральных чисел
  print('Натуральное число "a"');
  int n = int.parse(stdin.readLineSync() ?? '0');
  int summ = 0;

  for (int i = 2; i <= n; i += 2) {
    summ += i; //summ = summ + i
  }
  print('сумма = $summ');
}

void for3() {
  //Дано натуральное число n. Необходимо найти n факториал
  // n! = 1 * 2 * 3 * ... * n
  print('Натуральное число "a"');
  int n = int.parse(stdin.readLineSync() ?? '0');
  int factorial = 1;

  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }
  print('факториал $n! = $factorial');
}

void for4() {
  //Дано натуральное число n. Необходимо найти n двойной факториал
  // n!! = 1 * 3 * 5 * ... * n если n нечётное
  // n!! = 2 * 4 * 6 * ... * n если n чётное
  //print('Натуральное число "n"');
  stdout.write('Задайте натуральное число "n" : ');
  int n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  //int n = int.parse(stdin.readLineSync() ?? '0');
  int factorial = 1;

  late int iBegin;

  if (n == 0) {
    print('ноль');
    iBegin = 1;
  } else if (n % 2 == 1) {
    print('не чётное');
    iBegin = 2;
  } else {
    print('чётное');
    iBegin = 1;
  }

  for (int i = iBegin; i <= n; i += 2) {
    factorial *= i;
  }
  print('факториал $n!! = $factorial');
}

void for5() {
  //Дано натуральное число n. Необходимо найти все
  //делители данного числа
  //print('Натуральное число "n"');
  stdout.write('Задайте натуральное число "n" : ');
  int n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  //int n = int.parse(stdin.readLineSync() ?? '0');

  //действий 4, N = 100 -> 400
  // 98 -> 392
  // 49 -> 196
  print('1');
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      print("$i");
    }
  }
  print(n);
}

void for6() {
  //Дано натуральное число n. Необходимо проверить
  //является ли оно совершенным числом
  //совершенное число это число равное делителям
  // n=6: 1 2 3 -> 1 + 2 +3 = 6
  // n=8: 1 2 4 -> 1 + 2 + 4 = 7

  //print('Натуральное число "n"');
  stdout.write('Задайте натуральное число "n" : ');
  int n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  int sum = 0;

  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      sum = sum + i;
    }
  }
  if (n == sum) {
    print('совершенное');
  } else {
    print('несовершенное');
  }
}

void for7() {
  //Дано натуральное число n. Необходимо вывести на экран N первых чисел фибоначчи
  //каждое последующее число равно сумме двух предыдущих чисел
  //1 1 2 3 5 8 13 21 ...

  //print('Натуральное число "n"');
  stdout.write('Задайте натуральное число "n" : ');
  int n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  if (n < 1) {
    print('ошибка ввода');
  } else if (n == 1) {
    print(1);
  } else if (n == 2) {
    print(1);
    print(1);
  } else {
    int f1 = 1, f2 = 1;
    print(1);
    print(1);
    for (int i = 3; i <= n; i++) {
      int f3 = f1 + f2;
      print(f3);
      f1 = f2;
      f2 = f3;
    }
  }
}

void for8() {
  //Дано натуральное число n. Необходимо найти сумму следующей последовательности
  // 1/1 1/2 1/3 1/4 ... 1/n

  //print('Натуральное число "n"');
  stdout.write('Задайте натуральное число "n" : ');
  int n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  double d =1;

    for (int i = 2; i <= n; i++) {
    d=d + 1/i;
    }

  print('$d');

  }

void for9() {
  //Дано натуральное число n. Необходимо найти все совершенные числа
  //среди первых N натуральных

  stdout.write('Задайте натуральное число "n" : ');
  int n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  for (int i = 2; i <= n; i++) {
    int summ =1;
    for (int j=2; j <= i~/2; j++) {
      if (i % j == 0) {
        summ += j;
      }

    if (i == summ) {
      print(i);
    }

    }
  }

}

void for10() {
  //необходимо вывести на экран всю таблицу умножения
  for (int i = 1; i <= 10; i++) {

    for (int j=1; j <= 10; j++) {
      print ('$i x $j = ${i*j}');

    }
    print(' ');
  }

}