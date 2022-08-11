class Carro {  
   String placa;
   String cor;  

   Carro(this.placa, this.cor);
   Carro.construtor(String cor) { 
      print("Construtor nomeado foi usado. O valor informado foi... $cor");
   }
   void printPlaca() { 
      print(placa); 
   } 
}

void main() { 
  Carro meuCarro1= new Carro('QKE4866','vermelho');
  Carro meuCarro2= new Carro.construtor('Vermelho');
  meuCarro1.printPlaca(); 
  meuCarro2.printPlaca();
} 