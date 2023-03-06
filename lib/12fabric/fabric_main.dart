import 'package:bguir_1/12fabric/application.dart';

void fabricMain() {
Application app1 = Application('Браузер хром');
app1.information();

Application app2 = Application('Браузер 2');
app2.information();

if (app1 == app2) {print('равны');} else {print('не равны');}
}