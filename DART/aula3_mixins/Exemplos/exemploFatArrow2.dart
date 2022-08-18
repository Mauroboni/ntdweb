//Cria uma classe abstrata. Ela não pode ser instanciada
abstract class Artista {}
//Cria uma classe abstrata. Ela não pode ser instanciada
abstract class Cantar {
  cantar() => 'Canta Sertanejo';
}
mixin Dancar on Artista {
  void dancar() => print('Dançar');
}
//Uma classe concreta
class CantorBailarino extends Artista with Cantar, Dancar {}
void main() {
  var j = CantorBailarino();
  print(j.cantar());
  j.dancar();
}
