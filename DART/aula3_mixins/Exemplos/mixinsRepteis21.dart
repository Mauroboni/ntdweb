abstract class Reptil {
  void morder() => print('Nhac!');
  void nadar() => print('Nadando ...');
  void rastejar() => print('Rastejando ...');
  void cacar(String presa) {
    print('${this.runtimeType} -------');
    nadar();
    rastejar();
    morder();
    print('Comeu $presa');
  }
}

class Jacare extends Reptil{}
class Crocodilo extends Reptil{}

main() {
  var Jacira = new Jacare();
  var WallyGattor = new Crocodilo();
  WallyGattor.cacar('Zebra');
  Jacira.cacar('Peixe');
}