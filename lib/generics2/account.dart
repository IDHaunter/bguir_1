class Account{
  int id; //номер счёта
  int sum; //сумма на счёте

  Account(this.id, this.sum);

  @override
  String toString() {
    return 'Account{id: $id, sum: $sum}';
  }
}