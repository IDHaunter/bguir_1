abstract class Security {
  String name = '';
  int force = 1;

  Security.zeroPar();
  Security(this.name, this.force);

  void serve();
  void take();

}