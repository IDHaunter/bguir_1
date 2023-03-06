import 'package:bguir_1/generics2/account.dart';
import 'package:bguir_1/generics2/transaction.dart';

void generics2Main() {

  Account account1 = Account(45, 1224);
  Account account2 = Account(87, 45214);
  print(account1);
  print(account2);
  print('');

  Transaction transaction = Transaction<Account>(account1, account2, 1000);
  transaction.execute();

  print(account1);
  print(account2);

//  Transaction transaction2 = Transaction(account1, account2, 2000); - работает тоже т.к. дарт анализирует сам
//  transaction2.execute();


}