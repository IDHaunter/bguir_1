import 'dart:io';

// рекурсия - вызов функции самой себя
// дано натуральное число n, нужно найти n - факториал
// n! = 1*2*3*4*...* n
// n! = (n-1)! * n, n = 0 -> n! = 1
int fact (int n) {
  //обязательным для рекурсии является условие выхода из рекурсии (if ..)
  if (n>0) {
    return fact(n-1)*n;
  } else {
    return 1;
  }
}

void rec() {
  stdout.write('Задайте натуральное число a: ');
  int a = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  int f = fact(a);
  print('$a! - $f');
}