//Cria as classes abstratas
abstract class Animal {}
abstract class Mammal extends Animal {}
abstract class Bird extends Animal with fly, walk {}
abstract class Fish extends Animal with swim {}

//Cria os mixins
mixin walk { 
  void Walk() {
    print('Estou andando');}
}

mixin swim { 
  void Swim() {
    print('Estou nadando');}
}

mixin fly { 
  void Fly() => print('Estou voando');
}
//Criando os mamíferos 
class Dolphin extends Mammal  with swim {}
class Bat extends Mammal with walk, fly {}
class Cat extends Mammal with walk {}
//Criando os pássaros
class Dove extends Bird {}
class Duck extends Bird with swim {}
//Criando os peixes
class Shark extends Fish {}
class FlyngFish extends Fish with fly {}

void main() {
}

