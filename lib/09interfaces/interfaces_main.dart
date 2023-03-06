
import 'package:bguir_1/09interfaces/dog.dart';

void interfacesMain() {

  Dog dog = Dog('белый', 3, 'Бобик', 7);

  print(dog);
  dog.sleep();
  dog.food();
  dog.serve();
  dog.take();

}