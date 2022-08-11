class Carro {
   String placa;  
   Carro() {                           
      print("Construtor sem parametro foi usado");
   }                                   
   Carro.contru(String valor) { 
      print("Construtor nomeado foi usado. O valor informado foi... $valor");
      this.setPlaca = valor;
   }
   set setPlaca(String valor){
     this.placa = valor;
   } 
   get getPlaca{
     return this.placa;
   }
   void printPlaca(){
     print(placa); 
   } 
}

void main() { 
  Carro meuCarro1= new Carro();
  Carro meuCarro2= new Carro.contru('QKB5860');
  meuCarro1.setPlaca='QKE4861';
  print(meuCarro2.getPlaca);
} 
