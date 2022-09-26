//Construtor é um metodo para configurar um objeto
//Ele pode ser construído automaticamente

void main(){
  Pessoa variavel = Pessoa("Andeson Silva", "12345");
}

class Pessoa{
  late String usuario;
  late String senha;
  Pessoa(String usuario, String senha){
    this.usuario = usuario;
    this.senha = senha;
    this.autenticar();
  }
  void autenticar(){
    if(this.usuario == "Andeson Silva" && this.senha == "12345"){
      print("Usuário logado!!");
    }else{
      print("Erro!!");
    }
  }
}