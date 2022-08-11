class Pessoa {  
  String nome;
  String cpf;
  
  
  Pessoa(String nome, String cpf) {                   
    this.nome = nome;
    this.cpf = cpf;
    }
  
  get getNome{
    return this.nome;    
  }

  get getCpf{
    return this.cpf;      
  }
}

void main() { 
  Pessoa pessoa1= new Pessoa('Francisco','11111111111');
  print(pessoa1.getNome);

} 