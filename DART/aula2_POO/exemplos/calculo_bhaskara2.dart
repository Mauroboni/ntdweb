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
  double calculaDelta(){
    if (this.a==null)
      return null;
    else{
      return (this.b*this.b) - (4*this.a*this.constante);    
    }
  }
  
  List calculaRaizes(){
    return this.bhaskara(this.a, this.b, this.constante);
  }
  
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
  
  get getRaizes{
    if (this.raizes.length>0)
      return this.raizes;
  }
  

}
  
main() {
  //maiorValor(2,1,0); // Chama a função que verifica os valores
  var equacao = new EquacaoSegundoGrau();
  equacao.calculaRaizes();
  print(equacao.getRaizes);
  var equacao2 = new EquacaoSegundoGrau.contrutor(2,1,0);
  //print(equacao2.a);
  equacao2.calculaRaizes(); 
  print(equacao2.getRaizes);
  
//  equacao.getRaizes();

}