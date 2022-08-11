mixin Nadar {
  void nadar() => print('Nadando ...');
}
mixin Morder {
  void morder() => print('Nhac!!');
}
mixin Rastejar {
  void rastejar() => print('Rastejando');
}

abstract class Reptil with Nadar, Morder, Rastejar {
  void cacar(String presa) {
    print('${this.runtimeType} -------');
    nadar();
    rastejar();
    morder();
    print('Come $presa');
  }
}

class Crocodilo extends Reptil {}
class Jacare extends Reptil {}
class Peixe with Nadar, Morder {
  void alimentar() {
    print('Peixe --------');
    nadar();
    morder();
  }
}

main() {
  Crocodilo().cacar('Zebras');
  Jacare().cacar('Peixes');
  Peixe().alimentar();
}