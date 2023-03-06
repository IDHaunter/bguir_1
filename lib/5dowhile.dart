import 'dart:io';
//цикл с пост условием do {} while (условие)
//в отличие от while и for подразумевает минимум однократное выполнение кода до проверки условия выхода из цикла

void doWhile0() {
  //организовать проверку на корректный ввод натурального числа
  int n = 1;

  do {
    stdout.write('Задайте натуральное число : ');
    n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  } while (n<1);

  print('Вы ввели число $n');
}