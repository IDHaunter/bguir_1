import 'number.dart';

class Even implements Number{
  Even.zeroPar();
  Even(int number) {
    if (number> 0 && number % 2 == 0){
      this.number = number;
    }
  }


  @override
  int number=1;

  @override
  void nextNumber() {
    number += 2;
  }

  @override
  String toString() {
    return 'Текущее значение: $number';
  }

}