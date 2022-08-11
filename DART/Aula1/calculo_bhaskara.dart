import 'dart:math';

double delta(double variavelA, double variavelB, double constante) {
  return (variavelB * variavelB) - (4 * variavelA * constante);
}

List bhaskara(double variavelA, double variavelB, double constante) {
  double valorDelta = delta(variavelA, variavelB, constante);
  //var raizes= new List();
  var raizes = [];
  if (valorDelta == 0) {
    raizes.add((-variavelB + sqrt(valorDelta)) / (2 * variavelA));
  } else if (valorDelta >= 0) {
    raizes.add((-variavelB + sqrt(valorDelta)) / (2 * variavelA));
    raizes.add((-variavelB - sqrt(valorDelta)) / (2 * variavelA));
  }
  return raizes;
}

main() {
  //maiorValor(2,1,0); // Chama a função que verifica os valores
  var raizesDaEquacao = bhaskara(2, 1, 1);
  if (raizesDaEquacao.isNotEmpty) {
    if (raizesDaEquacao.length > 1) {
      print('A equação tem 2 raizes');
      print('Elas valem $raizesDaEquacao');
    } else {
      print('A equação tem apenas 1 raiz');
      print('Ela vale $raizesDaEquacao');
    }
  } else {
    print('A equação não tem raizes');
  }
}
