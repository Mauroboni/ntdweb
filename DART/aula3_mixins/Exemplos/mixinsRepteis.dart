class Jacare {
  void nadar() => print('Nadando ...');
  void morder() => print('Nhac!');
  void rastejar() => print('Rastejando ...');
  void cacar() {
    print('Jacare -------');
    nadar();
    morder();
    rastejar();
    print('Come peixes');
  }
}
class Crocodilo {
  void nadar() => print('Nadando ...');
  void morder() => print('Nhac!');
  void rastejar() => print('Rastejando ...');
  void cacar() {
    print('Crocodile -------');
    nadar();
    morder();
    rastejar();
    print('Come Zebras');
  }
}

main() {
  Crocodilo().cacar();
  Jacare().cacar();
}