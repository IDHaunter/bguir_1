import 'dart:io';

/*
if (условие) {
  //блок true
}
else {
  //блок false
}
 */

// операторы сравнения
/*
 >
 <
 >=
 <=
 ==
 !=
 */

void uslovie() {
  // Даны два целых числа А и В. Необходимо найти положительную
  // (не отрицательную) разницу между ними
  print('Введите целое число "a"');
  int a = int.parse(stdin.readLineSync() ?? '0');
  print('Введите целое число "b"');
  int b = int.parse(stdin.readLineSync() ?? '0');

  int result = 0;
  if (a > b) {
    result = a - b;
  } else {
    result = b - a;
  }

  print('Не отрицательная разница между $a и $b = $result');
}

void uslovie3() {
// дано целое число N. Необходимо определить, это положительное
// или отрицательное число
  print('Введите целое число:');
  int n = int.parse(stdin.readLineSync() ?? '0');

  if (n > 0) {
    print('$n - число положительное');
  } else if (n < 0) {
    print('$n - число Отрицательное');
  } else {
    print('$n - число равное 0');
  }
}

void uslovie4() {
  print('задайте число "a"');
  int a = int.parse(stdin.readLineSync() ?? '0');
  if (a == 0) {
    print('это ноль');
  } else if (a % 2 == 1) {
    print('не чётное');
  } else {
    print('чётное');
  }
}

void uslovie5() {
  //логические операторы
  /*
  &&  И
  ||  ИЛИ
  ^   ИСКЛЮЧАЮЩЕЕ ИЛИ
  !   отрицание
  */

  // даны длины 3 отрезков, определить можно ли из них собрать треугольник
  // сумма двух любых тророн дольше 3
  print('задайте длину отрезка "a"');
  int a = int.parse(stdin.readLineSync() ?? '0');

  print('задайте длину отрезка "a"');
  int b = int.parse(stdin.readLineSync() ?? '0');

  print('задайте длину отрезка "a"');
  int c = int.parse(stdin.readLineSync() ?? '0');

  /*
  if (a + b > c) {
    if (b + c > a) {
      if (c + a > b) {
        print('Треуольник можно собрать со сторонами $a, $b, $c');
      } else {
        print('Треуольник нельзя собрать со сторонами $a, $b, $c');
      }
    } else {
      print('Треуольник нельзя собрать со сторонами $a, $b, $c');
    }
  } else {
    print('Треуольник нельзя собрать со сторонами $a, $b, $c');
  }
  */

  if ((a + b > c) && (b + c > a) && (c + a > b)) {
    print('Треуольник можно собрать со сторонами $a, $b, $c');
  } else {
    print('Треуольник нельзя собрать со сторонами $a, $b, $c');
  }
}

void uslovie6() {
  //По номеру месяца необходимо вывести название поры года
  print('задайте номер месяца "a"');
  int a = int.parse(stdin.readLineSync() ?? '0');

  if ((a <= 0) || (a > 12)) {
    print('Месяц с номером $a не существует, задайте номер от 1 до 12');
  } else if ((a >= 3) && (a <= 5)) {
    print('весна');
  } else if ((a >= 6) && (a <= 8)) {
    print('лето');
  } else {
    print('зима');
  }
}

void uslovie7() {
  //Треугольник задан длиннами своих сторон, необходимо определить тип треугольника
  // равнобедренный
  // равносторонний
  // разносторонний

  // сумма двух любых тророн дольше 3
  print('задайте длину отрезка "a"');
  int a = int.parse(stdin.readLineSync() ?? '0');

  print('задайте длину отрезка "b"');
  int b = int.parse(stdin.readLineSync() ?? '0');

  print('задайте длину отрезка "c"');
  int c = int.parse(stdin.readLineSync() ?? '0');

  if ((a + b > c) && (b + c > a) && (c + a > b)) {
    print('Треуольник можно собрать со сторонами $a, $b, $c');
    if ((a==b) && (b==c)) {
      print('равносторонний');
    }     else if (a!=b && b!=c && c!=b)
               {
                 print('разносторонний');
               }
               else print('равнобедренный');

  } else {
    print('Треуольник нельзя собрать со сторонами $a, $b, $c');
  }


}
