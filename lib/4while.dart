import 'dart:io';
//цикл с неизвестным числом повторений
//while (a=b) { a= ; b = ; }

void while0() {
  //Дано натуральное число n. Необходимо Определить из какого количества цифр
  //состоит данное число
  //n = 123 -> 3 числа

  stdout.write('Задайте натуральное число "n" : ');
  int n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  int count = 0;
  while(n>0){
    count++;
    n ~/= 10;
  }

  print('Ответ: колчество цифр = $count');

}

void while1() {
  //Дано натуральное число n. Необходимо найти сумму цифр данного числа
  //n = 153 -> 1 + 5 + 3 -> 9

  stdout.write('Задайте натуральное число "n" : ');
  int n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  int sum = 0;
  while(n>0){
    n ~/= 10;
    sum += n % 10;
  }

  print('Сумма цифр числа = $sum');

}

void while2() {
  //Дано натуральное число n. Необходимо Из его записи удалить все цифры равные 2
  // n=324523 - 3453

  stdout.write('Задайте натуральное число "n" : ');
  int n = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  int k = 0;
  int razr = 1;
  while (n > 0) {
    if (n % 10 != 2) {
      k += n % 10 * razr;
      razr *= 10;
    }
    n ~/= 10;
  }


  print('результат = $k');

}

void while3() {
  //Дано натуральное число n. Необходимо найти значение числа Пи с точностью EPS (0 .. 1)
  //используя формулу Валлиса
  // p / 2 = 2/1 * 2/3 * 4/3 * 4/5 * 6/5 * 6/7 * ...

  stdout.write('Задайте точность для вычислений "eps" : ');
  double eps = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  double pi = 0;

  int i =1;
  int znak = 1;

  while (1/i > eps) {
    pi += znak * (1/i);
    znak = -znak;
    i += 2;
    }
  pi *= 4;
  print("""pi = $pi
  Вычислено членов последовательности ${i~/2}""");
  }


