/**
 * Fat-arrow function ou expressão lambda é uma maneira mais curta para declara uma função.
 * Elas não possuem  `{}`.
 * Sua declaração vem depois de `=>` fat-arrow o qual aponta para uma única instrução.
 *
 * Essa instrução é executada quando a função é chamada e
 * sempre vai retornar o resultado da execução.
 */
void main() {
  // `print( "Olá, $nome." )` retorna um objeto `void`
  void digaOla(String nome) => print("Olá, $nome.");

  // automaticamente retorna o resultado de `a * a`
  // O tipo dos dados será inferido em tempo de execução
  var calcularQuadrado = (a) => a * a;

  //PArece com o anterior, mas esse exemplo usa uma declaração explicita do tipo de dado para os parametros
  var soma = (num a, num b) => a + b;

  digaOla("Felizberto"); // Essa função não retorna nada
  print(calcularQuadrado(3)); // imprime o valor retornado pela função
  print(soma(1, 2)); // imprime o valor retornado pela função
}
