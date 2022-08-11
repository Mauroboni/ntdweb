// O nome da classe deve sermpre iniciar com uma letra maiusca.
class Funcionario {
  //Declaração dos atributos / propiedades / variáveis da instancia
   String nome;
   int idade;
   double salario;
  //Declarando um método
  showEmpInfo(){
    print("O nome do empregado é : ${nome}");
    print("A idade do empregado é  : ${idade}");
    print("O salario atual do empregado é  : ${salario}");
  }
}
void main(){
  // Criando um objeto da classe funcionario
  var emp = new Funcionario();
  emp.nome = "Adalberto Cunha";
  emp.idade = 22;
  emp.salario = 1800;
  emp.showEmpInfo();
}