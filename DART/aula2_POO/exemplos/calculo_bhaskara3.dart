import 'dart:math';
class EquacaoSegundoGrau{
  double a;
  double b;
  double constante;
  double delta;
  var raizes = new List();
  //Construtores  
  EquacaoSegundoGrau();
  EquacaoSegundoGrau.contrutor(double a, double b, double constante){
    valorA = a;
    this.b = b;
    this.constante = constante;
  }
  //Metodos
  set valorA(double a){
    this.a = a;
  }
  
  // Metodo que faz o calculo de Delta
  double calculaDelta(){
    if (this.a==null)
      return null;
    else{
      return (this.b*this.b) - (4*this.a*this.constante);    
    }
  }
  //Metodo que retorna os valores das raizes
  List calculaRaizes(){
    return this.bhaskara(this.a, this.b, this.constante);
  }
  
  //Metodo que faz aplica a formula de Bhaskara
  List bhaskara(double a, double b, double constante){
      double valorDelta = calculaDelta();
      if (valorDelta==null)
      {
        print('É necessário informar ao menos um valor!');
        return raizes;
      }
      else{
        if (valorDelta==0)
          this.raizes.add((-b+sqrt(valorDelta))/(2*a));
        else if (valorDelta>=0){
          this.raizes.add((-b+sqrt(valorDelta))/(2*a));
          this.raizes.add((-b-sqrt(valorDelta))/(2*a));
        }
      return raizes;        
     }
  }
  //Metodo que retorna os valores das raizes da equacao
  get getRaizes{
    if (this.raizes.length>0)
      return this.raizes;
  }
  

}
  
main() {
  var equacao = new EquacaoSegundoGrau();
  equacao.calculaRaizes();
  print(equacao.getRaizes);
  EquacaoSegundoGrau equacao2 = new EquacaoSegundoGrau.contrutor(2,1,0);
  equacao2.calculaRaizes();
  if (equacao2.raizes.length>=0){
    print(equacao2.getRaizes);
  }
}