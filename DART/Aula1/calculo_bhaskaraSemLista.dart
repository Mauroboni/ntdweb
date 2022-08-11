import 'dart:math';

double delta(double variavelA, double variavelB, double constante) {
  return (variavelB * variavelB) - (4 * variavelA * constante);
}

void bhaskara(double variavelA, double variavelB, double constante) {
  double valorDelta = delta(variavelA, variavelB, constante);
  if (valorDelta == 0) {
    print('A equação tem uma raiz');
    print('Ela vale ${(-variavelB + sqrt(valorDelta)) / (2 * variavelA)}');
  } else if (valorDelta >= 0) {
    print('A equação tem duas raizes');
    print('X1 ${(-variavelB + sqrt(valorDelta)) / (2 * variavelA)}');
    print('X2 ${(-variavelB - sqrt(valorDelta)) / (2 * variavelA)}');
  } else
    print('A equação não tem raizes');
}

main() {
  //maiorValor(2,1,0); // Chama a função que verifica os valores
  var raizesDaEquacao = bhaskara(0, 0, -8);
}
