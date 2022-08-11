import 'dart:math';

class EquacaoSegundoGrau {
  late double a;
  late double b;
  late double constante;
  late double delta;
  var raizes = [];
  //Construtores
  EquacaoSegundoGrau();
  EquacaoSegundoGrau.construtor(double a, double b, double constante) {
    this.a = a;
    this.b = b;
    this.constante = constante;
  }
  //Metodos
  set valorA(double a) {
    this.a = a;
  }

  // Metodo que faz o calculo de Delta
  double calculaDelta() {
    if (this.a == null)
      return -9999;
    else {
      return (this.b * this.b) - (4 * this.a * this.constante);
    }
  }

  //Metodo que retorna os valores das raizes
  List calculaRaizes() {
    return this.bhaskara(this.a, this.b, this.constante);
  }

  //Metodo que faz aplica a formula de Bhaskara
  List bhaskara(double a, double b, double constante) {
    double valorDelta = calculaDelta();
    if (valorDelta == -9999) {
      print('É necessário informar ao menos um valor!');
      return raizes;
    } else {
      if (valorDelta == 0)
        this.raizes.add((-b + sqrt(valorDelta)) / (2 * a));
      else if (valorDelta >= 0) {
        this.raizes.add((-b + sqrt(valorDelta)) / (2 * a));
        this.raizes.add((-b - sqrt(valorDelta)) / (2 * a));
      }
      return raizes;
    }
  }

  //Metodo que retorna os valores das raizes da equacao
  get getRaizes {
    if (this.raizes.length > 0) return this.raizes;
  }
}

main() {
  var equacao = new EquacaoSegundoGrau();
  equacao.calculaRaizes();
  print(equacao.getRaizes);
  EquacaoSegundoGrau equacao2 = new EquacaoSegundoGrau.construtor(2, 1, 0);
  equacao2.calculaRaizes();
  if (equacao2.raizes.isNotEmpty) {
    print(equacao2.getRaizes);
  }
}
