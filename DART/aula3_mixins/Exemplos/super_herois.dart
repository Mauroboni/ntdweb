import 'dart:math';

abstract class Heroi {  
  final String _nome;
  Heroi(this._nome);
  String salvarAlguem() => '$_nome está salvando alguém!';
  Point mover();
  int atacar();
}

class Hulk extends Heroi {
  Hulk() : super("Hulk");
  @override
  Point mover() {
    return null; //TODO implement
  }
  @override
  int atacar() {
    return null; //TODO implement
  }
}

class IronMan extends Heroi {
  IronMan() : super("Iron Man");
  @override
  Point mover() {
    return null; //TODO implement
  }
  @override
  int atacar() {
    return null; //TODO implement
  }
}
