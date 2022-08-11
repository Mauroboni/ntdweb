class Pessoa {  
  String nome;
  String cpf;
  
  Pessoa();
  
  Pessoa.construtor(String nome, String cpf) {                   
    this.nome = nome;
    this.cpf = cpf;
  }
  
  String get getNome{
    return this.nome;    
  }
  String get getCpf{
    return this.cpf;      
  }
}

class Estudante extends Pessoa{
  String matricula;
  String situacao;
   
  Estudante.construtor(String nome, String cpf, String matricula, String situacao){
    this.nome = nome;
    this.cpf = cpf;
    this.matricula = matricula;
    this.situacao = situacao;
  }
  String get getMatricula{
    return matricula;
  }
  String get getSituacao{
    return situacao;
  }
  
}

void main() { 
  Pessoa pessoa1= new Pessoa.construtor('Francisco','11111111111');
  Estudante aluno1 = new Estudante.construtor('Nelzinor', '22222222222', '11200031', 'matriculado' );
  print(pessoa1.getNome);
  print(aluno1.getNome);

} 