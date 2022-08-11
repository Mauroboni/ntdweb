import 'dart:math';

class EquacaoSegundoGrau {
  late double a;
  late double b;
  late double constante;
  late double delta;
  var raizes = [];
  //Construtores
  EquacaoSegundoGrau();
  EquacaoSegundoGrau.construtor(this.a, this.b, this.constante);
  //Metodos
  set valorA(double a) {
    this.a = a;
  }

  // Metodo que faz o calculo de Delta
  double calculaDelta() {
    if (a == null) {
      return -9999;
    } else {
      return (b * b) - (4 * a * constante);
    }
  }

  //Metodo que retorna os valores das raizes
  List calculaRaizes() {
    return bhaskara(a, b, constante);
  }

  //Metodo que faz aplica a formula de Bhaskara
  List bhaskara(double a, double b, double constante) {
    double valorDelta = calculaDelta();
    if (valorDelta == -9999) {
      print('É necessário informar ao menos um valor!');
      return raizes;
    } else {
      if (valorDelta == 0) {
        raizes.add((-b + sqrt(valorDelta)) / (2 * a));
      } else if (valorDelta >= 0) {
        raizes.add((-b + sqrt(valorDelta)) / (2 * a));
        raizes.add((-b - sqrt(valorDelta)) / (2 * a));
      }
      return raizes;
    }
  }

  //Metodo que retorna os valores das raizes da equacao
  get getRaizes {
    if (raizes.isNotEmpty) return raizes;
  }
}

main() {
  var equacao = EquacaoSegundoGrau();
  equacao.calculaRaizes();
  print(equacao.getRaizes);
  EquacaoSegundoGrau equacao2 = EquacaoSegundoGrau.construtor(2, 1, 0);
  equacao2.calculaRaizes();
  if (equacao2.raizes.isNotEmpty) {
    print(equacao2.getRaizes);
  }
}
