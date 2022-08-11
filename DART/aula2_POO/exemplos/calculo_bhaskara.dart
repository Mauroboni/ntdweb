import 'dart:math';

class EquacaoSegundoGrau {
  double a = 0;
  double b = 0;
  double constante = 0;
  double delta = -9999;
  var raizes = [];
  //Construtores
  EquacaoSegundoGrau();
  EquacaoSegundoGrau.construtor(this.a, this.b, this.constante);

  //Metodos
  set valorA(double a) {
    this.a = a;
  }

  // Método que faz o calculo de Delta
  double calculaDelta() {
    if (a == 0) {
      return -9999;
    } else {
      return (b * b) - (4 * a * constante);
    }
  }

  //Método que retorna os valores das raízes
  List calculaRaizes() {
    return bhaskara(a, b, constante);
  }

  //Método que faz aplica a formula de Bhaskara
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

  //Método que retorna os valores das raizes da equação
  get getRaizes {
    if (raizes.isNotEmpty) return raizes;
  }
}

main() {
  print('Bhaskara, primeira execução - construtor sobrescrito');
  var equacao = EquacaoSegundoGrau();
  equacao.calculaRaizes();
  print(equacao.getRaizes);

  print('\nBhaskara, segunda execução - usando um setter');
  equacao.valorA = 8;
  equacao.calculaRaizes();
  print(equacao.getRaizes);

  print('\nBhaskara, terceira execução - construtor nomeado');
  EquacaoSegundoGrau equacao2 = EquacaoSegundoGrau.construtor(2, 1, 0);
  equacao2.calculaRaizes();
  if (equacao2.raizes.isNotEmpty) {
    print(equacao2.getRaizes);
  }
}
