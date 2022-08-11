// Essa classe será usada como mixin e não poderá ser estendida diretamente
abstract class Walker {
  factory Walker._() => null;

  void walk() {
    print("I'm walking");
  }
}