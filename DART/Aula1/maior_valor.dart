// Uma função que recebe tres valores numericos
maiorValor(int a, int b, int c) {
  if (a>b && a>c)
    print ('O maior valor é $a');
  else if (b>a && b>c)
    print ('O maior valor é $b');
  else if (c>a && c>b)
    print ('O maior valor é $c');
    print ('Os valores são iguais!');
}

// Aqui é onde tudo começa…
main() {
  maiorValor(1,2,1); // Chama a função que verifica os valores
}