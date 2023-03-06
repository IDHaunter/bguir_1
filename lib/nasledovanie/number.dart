class Number{
  int number=1;

  Number.zeroPar();
  Number(int number){
   if (number > 0) {
     this.number = number;
   }
  }

  void nextNumber(){
    number ++;
  }

  @override
  String toString() {
    return 'Текущее значение: $number';
  }

}