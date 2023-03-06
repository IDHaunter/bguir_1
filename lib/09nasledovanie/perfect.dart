import 'number.dart';
import 'dart:math';

class Perfect implements Number{
  @override
  int number=2;

  Perfect.zeroPar();
  Perfect(int number){
    if (Perfect.isPerfect(number)){
      this.number = number;
    }
  }

  @override
  void nextNumber() {
    int temp = number;
   do {
     temp ++;
   } while (!isPerfect(temp));
   number = temp;
  }

  static bool isPerfect(int n) {
    for (int i=2; i <= sqrt(n); i++ ) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  @override
  String toString() {
    return 'Текущее значение: $number';
  }

}