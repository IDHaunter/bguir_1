// общая схема создания класса с ограниченными обобщениями
// по сути мы устанавливаем ограничение на обобщение в виде наследования
// class имя _класса<T extends имя_класса_родителя>

import 'account.dart';

class Transaction<T extends Account>{
  T fromAccount; //с какого счёта перевод
  T toAccount; //на какой счёт перевод
  int sum; //сумма перевода

  Transaction(this.fromAccount, this.toAccount, this.sum);

  void execute() {
    if (fromAccount.sum>sum) {
      fromAccount.sum -= sum;
      toAccount.sum += sum;
      print('Счёт ${fromAccount.id}: ${fromAccount.sum} р. \n Счёт ${toAccount.id}: ${toAccount.sum} р.');
    }
    else {
      print('Недостаточно средств');
    }
  }

}