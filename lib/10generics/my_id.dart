class MyID{
  int _day = 1;
  int _month = 1;
  int _year = 2000;
  String _dopInf = '';

  String id = '';

  MyID(this._day, this._month, this._year, this._dopInf){
    id = generatorID();
  }

  String generatorID() {
    return '$_day$_dopInf$_year$_month';
  }

  @override
  String toString() {
    return id;
  }
}